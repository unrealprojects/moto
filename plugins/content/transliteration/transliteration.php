<?php
/*------------------------------------------------------------------------
Content - Transliteration
# ------------------------------------------------------------------------
# The Krotek
# Copyright (C) 2011-2014 The Krotek. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Website: http://thekrotek.com
# Support:  support@thekrotek.com
-------------------------------------------------------------------------*/

// no direct access
defined("_JEXEC") or die("Restricted access");

class plgContentTransliteration extends JPlugin
{
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
	}
  	
	public function onContentBeforeSave($context, $article, $isNew)
	{
		if ($this->params->get('doall') == "1") {
			$db = JFactory::getDbo();
			$query = $db->getQuery(true);
			$db->setQuery("SELECT id, title FROM #__content");
			$articles = $db->loadAssocList();
			
			foreach ($articles as $item) {
				$alias = $this->doTransliterate($item['title']);
				$db->setQuery("UPDATE #__content SET alias = ".$db->Quote($alias)." WHERE id = ".$db->Quote($item['id']));
				$db->query();
			}
		} else {
			if (($this->params->get('mode') == "change") || (($this->params->get('mode') == "empty") && ($article->alias == ""))) {
				$article->alias = $this->doTransliterate($article->title);
			}
		}
	}
	
	public function doTransliterate($title)
	{
		$input = array_map('trim', explode(",", $this->params->get('input')));
		$output = array_map('trim', explode(",", $this->params->get('output')));
		$alias = str_replace($input, $output, str_replace(" ", "-", mb_ereg_replace("\s+", " ", mb_ereg_replace("[^\w\s+]", "", mb_strtolower($title)))));
		
		return $alias;
	}
}

?>