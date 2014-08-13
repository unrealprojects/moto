/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

(function(t){var e=function(){};t.extend(e.prototype,{name:"AliasEdit",options:{url:"index.php?option=com_zoo&controller=manager&format=raw&task=getalias",force_safe:false,edit:false},initialize:function(e,i){this.options=t.extend({},this.options,i);var n=this;this.input=e;this.trigger=e.find("a.trigger");this.panel=e.find("div.panel");this.text=this.panel.find("input:text");this.name=e.find('input[name="name"]');if(!this.options.edit){this.name.bind("blur.name",function(){if(n.name.val().length&&!n.text.val().length){n.setAlias(n.name.val())}})}this.trigger.bind("click",function(e){e.preventDefault();t(this).hide();n.panel.addClass("active");n.text.focus();n.text.bind("keydown",function(t){t.stopPropagation();if(t.which==13){n.setAlias(n.text.val())}if(t.which==27){n.remove()}});n.input.find("input.accept").bind("click",function(t){t.preventDefault();n.setAlias(n.text.val())});n.input.find("a.cancel").bind("click",function(t){t.preventDefault();n.remove()})})},setAlias:function(e){var i=this;if(!e.length){e=i.name.val()}t.getJSON(this.options.url,{name:e,force_safe:this.options.force_safe?1:0},function(e){if(!e.length){if(!i.options.force_safe){e="42"}else{e="";i.panel.addClass("active");i.text.focus();alert("You cannot use non-latin characters for type aliases!");return}}i.text.val(e);i.trigger.text(e);t(i).unbind("blur.name");i.remove()})},remove:function(){this.trigger.show();this.panel.removeClass("active")}});t.fn[e.prototype.name]=function(){var i=arguments;var n=i[0]?i[0]:null;return this.each(function(){var a=t(this);if(e.prototype[n]&&a.data(e.prototype.name)&&n!="initialize"){a.data(e.prototype.name)[n].apply(a.data(e.prototype.name),Array.prototype.slice.call(i,1))}else if(!n||t.isPlainObject(n)){var o=new e;if(e.prototype["initialize"]){o.initialize.apply(o,t.merge([a],i))}a.data(e.prototype.name,o)}else{t.error("Method "+n+" does not exist on jQuery."+e.name)}})}})(jQuery);