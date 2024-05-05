--

SET FOREIGN_KEY_CHECKS = 0;

--

TRUNCATE `ads_types`;
TRUNCATE `chat_message_types`;
TRUNCATE `clan_levels`;
TRUNCATE `config_types`;
TRUNCATE `config`;
TRUNCATE `features`;
TRUNCATE `items_types`;
TRUNCATE `locale`;
TRUNCATE `objects_types`;
TRUNCATE `operation_types`;
TRUNCATE `skills_skill_type`;
TRUNCATE `target_options`;

REPLACE INTO `ads_types` (`id`, `key`) VALUES
	(1, 'banner'),
	(2, 'eventVideo');

REPLACE INTO `chat_message_types` (`id`, `key`, `show_tab`, `also_show_in_type`) VALUES
	(1, 'message', 1, NULL),
	(2, 'joined', 0, 1),
	(3, 'system', 0, 1),
	(4, 'private', 1, 1),
	(5, 'damage', 0, 1),
	(6, 'reward', 0, 1),
	(7, 'skill', 0, 1),
	(8, 'teams', 1, 1),
	(9, 'global', 1, 1),
	(10, 'error', 0, 1);

REPLACE INTO `clan_levels` (`id`, `key`, `label`, `required_experience`) VALUES
	(1, 1, '1', 0);

REPLACE INTO `config_types` (`id`, `label`) VALUES
    (1, 'string'),
    (2, 'float'),
    (3, 'boolean'),
    (4, 'json'),
    (5, 'comma_separated');

REPLACE INTO `config` (`id`, `scope`, `path`, `value`, `type`) VALUES
	(1, 'client', 'actions/damage/color', '#ff0000', 1),
	(2, 'client', 'actions/damage/duration', '600', 2),
	(3, 'client', 'actions/damage/enabled', '1', 3),
	(4, 'client', 'actions/damage/font', 'Verdana, Geneva, sans-serif', 1),
	(5, 'client', 'actions/damage/fontSize', '14', 2),
	(6, 'client', 'actions/damage/shadowColor', 'rgba(0,0,0,0.7)', 1),
	(7, 'client', 'actions/damage/showAll', '0', 3),
	(8, 'client', 'actions/damage/stroke', '#000000', 1),
	(9, 'client', 'actions/damage/strokeThickness', '4', 2),
	(10, 'client', 'actions/damage/top', '50', 2),
	(11, 'client', 'actions/skills/affectedProperty', 'hp', 1),
	(12, 'client', 'ads/general/providers/crazyGames/enabled', '0', 3),
	(13, 'client', 'ads/general/providers/crazyGames/sdkUrl', 'https://sdk.crazygames.com/crazygames-sdk-v2.js', 1),
	(14, 'client', 'ads/general/providers/crazyGames/videoMinimumDuration', '3000', 2),
	(15, 'client', 'ads/general/providers/gameMonetize/enabled', '0', 3),
	(16, 'client', 'ads/general/providers/gameMonetize/gameId', 'your-game-id-should-be-here', 1),
	(17, 'client', 'ads/general/providers/gameMonetize/sdkUrl', 'https://api.gamemonetize.com/sdk.js', 1),
	(18, 'client', 'chat/messages/characterLimit', '100', 2),
	(19, 'client', 'chat/messages/characterLimitOverhead', '30', 2),
	(20, 'client', 'clan/general/openInvites', '0', 3),
	(21, 'client', 'clan/labels/clanTitle', 'Clan: %clanName - Leader: %leaderName', 1),
	(22, 'client', 'clan/labels/propertyMaxValue', '/ %propertyMaxValue', 1),
	(23, 'client', 'clan/labels/requestFromTitle', 'Clan request from:', 1),
	(24, 'client', 'gameEngine/banner', '0', 3),
	(25, 'client', 'gameEngine/dom/createContainer', '1', 3),
	(26, 'client', 'gameEngine/parent', 'reldens', 1),
	(27, 'client', 'gameEngine/physics/arcade/debug', 'false', 3),
	(28, 'client', 'gameEngine/physics/arcade/gravity/x', '0', 2),
	(29, 'client', 'gameEngine/physics/arcade/gravity/y', '0', 2),
	(30, 'client', 'gameEngine/physics/default', 'arcade', 1),
	(31, 'client', 'gameEngine/scale/autoCenter', '1', 3),
	(32, 'client', 'gameEngine/scale/height', '720', 2),
	(33, 'client', 'gameEngine/scale/min/height', '360', 2),
	(34, 'client', 'gameEngine/scale/min/width', '360', 2),
	(35, 'client', 'gameEngine/scale/mode', '3', 2),
	(36, 'client', 'gameEngine/scale/parent', 'reldens', 1),
	(37, 'client', 'gameEngine/scale/width', '1280', 2),
	(38, 'client', 'gameEngine/type', '0', 2),
	(39, 'client', 'general/animations/frameRate', '10', 2),
	(40, 'client', 'general/assets/arrowDownPath', '/assets/sprites/arrow-down.png', 1),
	(41, 'client', 'general/assets/statsIconPath', '/assets/icons/book.png', 1),
	(42, 'client', 'general/controls/action_button_hold', '0', 3),
	(43, 'client', 'general/controls/allowSimultaneousKeys', '1', 3),
	(44, 'client', 'general/engine/clientInterpolation', '1', 3),
	(45, 'client', 'general/engine/experimentalClientPrediction', '0', 3),
	(46, 'client', 'general/engine/interpolationSpeed', '0.4', 2),
	(47, 'client', 'general/gameEngine/updateGameSizeTimeOut', '500', 2),
	(48, 'client', 'general/users/allowGuest', '1', 3),
	(49, 'client', 'general/users/allowRegistration', '1', 3),
	(50, 'client', 'login/termsAndConditions/body', 'This is our test terms and conditions content.', 1),
	(51, 'client', 'login/termsAndConditions/checkboxLabel', 'Accept terms and conditions', 1),
	(52, 'client', 'login/termsAndConditions/es/body', 'Este es el contenido de nuestros términos y condiciones de prueba.', 1),
	(53, 'client', 'login/termsAndConditions/es/checkboxLabel', 'Aceptar terminos y condiciones', 1),
	(54, 'client', 'login/termsAndConditions/es/heading', 'Términos y condiciones', 1),
	(55, 'client', 'login/termsAndConditions/es/link', 'Acepta nuestros Términos y Condiciones (haz clic aquí).', 1),
	(56, 'client', 'login/termsAndConditions/heading', 'Terms and conditions', 1),
	(57, 'client', 'login/termsAndConditions/link', 'Accept our Terms and Conditions (click here).', 1),
	(58, 'client', 'map/layersDepth/belowPlayer', '0', 2),
	(59, 'client', 'map/layersDepth/changePoints', '0', 2),
	(60, 'client', 'map/tileData/height', '16', 2),
	(61, 'client', 'map/tileData/margin', '1', 2),
	(62, 'client', 'map/tileData/spacing', '2', 2),
	(63, 'client', 'map/tileData/width', '16', 2),
	(64, 'client', 'objects/npc/invalidOptionMessage', 'I do not understand.', 1),
	(65, 'client', 'players/animations/basedOnPress', '1', 3),
	(66, 'client', 'players/animations/collideWorldBounds', '1', 3),
	(67, 'client', 'players/animations/defaultFrames/down/end', '2', 2),
	(68, 'client', 'players/animations/defaultFrames/down/start', '0', 2),
	(69, 'client', 'players/animations/defaultFrames/left/end', '5', 2),
	(70, 'client', 'players/animations/defaultFrames/left/start', '3', 2),
	(71, 'client', 'players/animations/defaultFrames/right/end', '8', 2),
	(72, 'client', 'players/animations/defaultFrames/right/start', '6', 2),
	(73, 'client', 'players/animations/defaultFrames/up/end', '11', 2),
	(74, 'client', 'players/animations/defaultFrames/up/start', '9', 2),
	(75, 'client', 'players/animations/diagonalHorizontal', '1', 3),
	(76, 'client', 'players/animations/fadeDuration', '1000', 2),
	(77, 'client', 'players/animations/fallbackImage', 'player-base.png', 1),
	(78, 'client', 'players/multiplePlayers/enabled', '1', 3),
	(79, 'client', 'players/physicalBody/height', '25', 2),
	(80, 'client', 'players/physicalBody/width', '25', 2),
	(81, 'client', 'players/playedTime/label', 'Played time %playedTimeInHs hs', 1),
	(82, 'client', 'players/playedTime/show', '2', 2),
	(83, 'client', 'players/size/height', '71', 2),
	(84, 'client', 'players/size/leftOffset', '0', 2),
	(85, 'client', 'players/size/topOffset', '20', 2),
	(86, 'client', 'players/size/width', '52', 2),
	(87, 'client', 'players/tapMovement/enabled', '1', 3),
	(88, 'client', 'rewards/titles/rewardMessage', 'You obtained %dropQuantity %itemLabel', 1),
	(89, 'client', 'rooms/selection/allowOnLogin', '1', 3),
	(90, 'client', 'rooms/selection/allowOnRegistration', '1', 3),
	(91, 'client', 'rooms/selection/loginAvailableRooms', '*', 1),
	(92, 'client', 'rooms/selection/loginLastLocation', '1', 3),
	(93, 'client', 'rooms/selection/loginLastLocationLabel', 'Last Location', 1),
	(94, 'client', 'rooms/selection/registrationAvailableRooms', '*', 1),
	(95, 'client', 'skills/animations/default_atk', '{"key":"default_atk","animationData":{"enabled":true,"type":"spritesheet","img":"default_atk","frameWidth":64,"frameHeight":64,"start":0,"end":4,"repeat":0}}', 4),
	(96, 'client', 'skills/animations/default_bullet', '{"key":"default_bullet","animationData":{"enabled":true,"type":"spritesheet","img":"default_bullet","frameWidth":64,"frameHeight":64,"start":0,"end":2,"repeat":-1,"frameRate":1}}', 4),
	(97, 'client', 'skills/animations/default_cast', '{"key": "default_cast","animationData":{"enabled":false,"type":"spritesheet","img":"default_cast","frameWidth":64,"frameHeight":64,"start":0,"end":3,"repeat":0}}', 4),
	(98, 'client', 'skills/animations/default_death', '{"key":"default_death","animationData":{"enabled":true,"type":"spritesheet","img":"default_death","frameWidth":64,"frameHeight":64,"start":0,"end":1,"repeat":0,"frameRate":1}}', 4),
	(99, 'client', 'skills/animations/default_hit', '{"key":"default_hit","animationData":{"enabled":true,"type":"spritesheet","img":"default_hit","frameWidth":64,"frameHeight":64,"start":0,"end":3,"repeat":0,"depthByPlayer":"above"}}', 4),
	(100, 'client', 'team/labels/leaderNameTitle', 'Team leader: %leaderName', 1),
	(101, 'client', 'team/labels/propertyMaxValue', '/ %propertyMaxValue', 1),
	(102, 'client', 'team/labels/requestFromTitle', 'Team request from:', 1),
	(103, 'client', 'trade/players/awaitTimeOut', '1', 3),
	(104, 'client', 'trade/players/timeOut', '8000', 2),
	(105, 'client', 'ui/chat/damageMessages', '1', 3),
	(106, 'client', 'ui/chat/defaultOpen', '0', 3),
	(107, 'client', 'ui/chat/dodgeMessages', '1', 3),
	(108, 'client', 'ui/chat/effectMessages', '1', 3),
	(109, 'client', 'ui/chat/enabled', '1', 3),
	(110, 'client', 'ui/chat/notificationBalloon', '1', 3),
	(111, 'client', 'ui/chat/overheadChat/closeChatBoxAfterSend', '1', 3),
	(112, 'client', 'ui/chat/overheadChat/enabled', '1', 3),
	(113, 'client', 'ui/chat/overheadChat/isTyping', '1', 3),
	(114, 'client', 'ui/chat/overheadText/align', 'center', 1),
	(115, 'client', 'ui/chat/overheadText/depth', '200000', 2),
	(116, 'client', 'ui/chat/overheadText/fill', '#ffffff', 1),
	(117, 'client', 'ui/chat/overheadText/fontFamily', 'Verdana, Geneva, sans-serif', 1),
	(118, 'client', 'ui/chat/overheadText/fontSize', '12px', 1),
	(119, 'client', 'ui/chat/overheadText/height', '15', 2),
	(120, 'client', 'ui/chat/overheadText/shadowBlur', '5', 2),
	(121, 'client', 'ui/chat/overheadText/shadowColor', 'rgba(0,0,0,0.7)', 1),
	(122, 'client', 'ui/chat/overheadText/shadowX', '5', 2),
	(123, 'client', 'ui/chat/overheadText/shadowY', '5', 2),
	(124, 'client', 'ui/chat/overheadText/stroke', 'rgba(0,0,0,0.7)', 1),
	(125, 'client', 'ui/chat/overheadText/strokeThickness', '20', 2),
	(126, 'client', 'ui/chat/overheadText/textLength', '4', 2),
	(127, 'client', 'ui/chat/overheadText/timeOut', '5000', 2),
	(128, 'client', 'ui/chat/overheadText/topOffset', '20', 2),
	(129, 'client', 'ui/chat/responsiveX', '100', 2),
	(130, 'client', 'ui/chat/responsiveY', '100', 2),
	(131, 'client', 'ui/chat/showTabs', '1', 3),
	(132, 'client', 'ui/chat/totalValidTypes', '2', 2),
	(133, 'client', 'ui/chat/x', '440', 2),
	(134, 'client', 'ui/chat/y', '940', 2),
	(135, 'client', 'ui/clan/enabled', '1', 3),
	(136, 'client', 'ui/clan/responsiveX', '100', 2),
	(137, 'client', 'ui/clan/responsiveY', '0', 2),
	(138, 'client', 'ui/clan/sharedProperties', '{"hp":{"path":"stats/hp","pathMax":"statsBase/hp","label":"HP"},"mp":{"path":"stats/mp","pathMax":"statsBase/mp","label":"MP"}}', 4),
	(139, 'client', 'ui/clan/x', '430', 2),
	(140, 'client', 'ui/clan/y', '100', 2),
	(141, 'client', 'ui/controls/allowPrimaryTouch', '1', 3),
	(142, 'client', 'ui/controls/defaultActionKey', '', 1),
	(143, 'client', 'ui/controls/disableContextMenu', '1', 3),
	(144, 'client', 'ui/controls/enabled', '1', 3),
	(145, 'client', 'ui/controls/opacityEffect', '1', 3),
	(146, 'client', 'ui/controls/primaryMove', '0', 3),
	(147, 'client', 'ui/controls/responsiveX', '0', 2),
	(148, 'client', 'ui/controls/responsiveY', '100', 2),
	(149, 'client', 'ui/controls/tabTarget', '1', 3),
	(150, 'client', 'ui/controls/x', '120', 2),
	(151, 'client', 'ui/controls/y', '390', 2),
	(152, 'client', 'ui/default/responsiveX', '10', 2),
	(153, 'client', 'ui/default/responsiveY', '10', 2),
	(154, 'client', 'ui/default/x', '120', 2),
	(155, 'client', 'ui/default/y', '100', 2),
	(156, 'client', 'ui/equipment/enabled', '1', 3),
	(157, 'client', 'ui/equipment/responsiveX', '100', 2),
	(158, 'client', 'ui/equipment/responsiveY', '0', 2),
	(159, 'client', 'ui/equipment/x', '430', 2),
	(160, 'client', 'ui/equipment/y', '90', 2),
	(161, 'client', 'ui/instructions/enabled', '1', 3),
	(162, 'client', 'ui/instructions/responsiveX', '100', 2),
	(163, 'client', 'ui/instructions/responsiveY', '100', 2),
	(164, 'client', 'ui/instructions/x', '380', 2),
	(165, 'client', 'ui/instructions/y', '940', 2),
	(166, 'client', 'ui/inventory/enabled', '1', 3),
	(167, 'client', 'ui/inventory/responsiveX', '100', 2),
	(168, 'client', 'ui/inventory/responsiveY', '0', 2),
	(169, 'client', 'ui/inventory/x', '380', 2),
	(170, 'client', 'ui/inventory/y', '450', 2),
	(171, 'client', 'ui/lifeBar/enabled', '1', 3),
	(172, 'client', 'ui/lifeBar/fillStyle', '0xff0000', 1),
	(173, 'client', 'ui/lifeBar/fixedPosition', '0', 3),
	(174, 'client', 'ui/lifeBar/height', '5', 2),
	(175, 'client', 'ui/lifeBar/lineStyle', '0xffffff', 1),
	(176, 'client', 'ui/lifeBar/responsiveX', '1', 2),
	(177, 'client', 'ui/lifeBar/responsiveY', '24', 2),
	(178, 'client', 'ui/lifeBar/showAllPlayers', '0', 3),
	(179, 'client', 'ui/lifeBar/showEnemies', '1', 3),
	(180, 'client', 'ui/lifeBar/showOnClick', '1', 3),
	(181, 'client', 'ui/lifeBar/top', '5', 2),
	(182, 'client', 'ui/lifeBar/width', '50', 2),
	(183, 'client', 'ui/lifeBar/x', '5', 2),
	(184, 'client', 'ui/lifeBar/y', '12', 2),
	(185, 'client', 'ui/loading/assetsColor', '#ffffff', 1),
	(186, 'client', 'ui/loading/assetsSize', '18px', 1),
	(187, 'client', 'ui/loading/font', 'Verdana, Geneva, sans-serif', 1),
	(188, 'client', 'ui/loading/fontSize', '20px', 1),
	(189, 'client', 'ui/loading/loadingColor', '#ffffff', 1),
	(190, 'client', 'ui/loading/percentColor', '#666666', 1),
	(191, 'client', 'ui/loading/showAssets', '1', 3),
	(192, 'client', 'ui/maximum/x', '1280', 2),
	(193, 'client', 'ui/maximum/y', '720', 2),
	(194, 'client', 'ui/minimap/addCircle', '1', 3),
	(195, 'client', 'ui/minimap/camBackgroundColor', 'rgba(0,0,0,0.6)', 1),
	(196, 'client', 'ui/minimap/camX', '140', 2),
	(197, 'client', 'ui/minimap/camY', '10', 2),
	(198, 'client', 'ui/minimap/camZoom', '0.15', 2),
	(199, 'client', 'ui/minimap/circleAlpha', '1', 2),
	(200, 'client', 'ui/minimap/circleColor', 'rgb(0,0,0)', 1),
	(201, 'client', 'ui/minimap/circleFillAlpha', '0', 2),
	(202, 'client', 'ui/minimap/circleFillColor', '1', 2),
	(203, 'client', 'ui/minimap/circleRadio', '80.35', 2),
	(204, 'client', 'ui/minimap/circleStrokeAlpha', '0.6', 2),
	(205, 'client', 'ui/minimap/circleStrokeColor', '0', 2),
	(206, 'client', 'ui/minimap/circleStrokeLineWidth', '6', 2),
	(207, 'client', 'ui/minimap/circleX', '220', 2),
	(208, 'client', 'ui/minimap/circleY', '88', 2),
	(209, 'client', 'ui/minimap/enabled', '1', 3),
	(210, 'client', 'ui/minimap/fixedHeight', '450', 2),
	(211, 'client', 'ui/minimap/fixedWidth', '450', 2),
	(212, 'client', 'ui/minimap/mapHeightDivisor', '1', 2),
	(213, 'client', 'ui/minimap/mapWidthDivisor', '1', 2),
	(214, 'client', 'ui/minimap/responsiveX', '34', 2),
	(215, 'client', 'ui/minimap/responsiveY', '2.4', 2),
	(216, 'client', 'ui/minimap/roundMap', '1', 3),
	(217, 'client', 'ui/minimap/x', '180', 2),
	(218, 'client', 'ui/minimap/y', '10', 2),
	(219, 'client', 'ui/npcDialog/responsiveX', '10', 2),
	(220, 'client', 'ui/npcDialog/responsiveY', '10', 2),
	(221, 'client', 'ui/npcDialog/x', '120', 2),
	(222, 'client', 'ui/npcDialog/y', '100', 2),
	(223, 'client', 'ui/options/acceptOrDecline', '{"1":{"label":"Accept","value":1},"2":{"label":"Decline","value":2}}', 4),
	(224, 'client', 'ui/playerBox/enabled', '1', 3),
	(225, 'client', 'ui/playerBox/responsiveX', '0', 2),
	(226, 'client', 'ui/playerBox/responsiveY', '0', 2),
	(227, 'client', 'ui/playerBox/x', '50', 2),
	(228, 'client', 'ui/playerBox/y', '30', 2),
	(229, 'client', 'ui/players/nameText/align', 'center', 1),
	(230, 'client', 'ui/players/nameText/depth', '200000', 2),
	(231, 'client', 'ui/players/nameText/fill', '#ffffff', 1),
	(232, 'client', 'ui/players/nameText/fontFamily', 'Verdana, Geneva, sans-serif', 1),
	(233, 'client', 'ui/players/nameText/fontSize', '12px', 1),
	(234, 'client', 'ui/players/nameText/height', '-90', 2),
	(235, 'client', 'ui/players/nameText/shadowBlur', '5', 2),
	(236, 'client', 'ui/players/nameText/shadowColor', 'rgba(0,0,0,0.7)', 1),
	(237, 'client', 'ui/players/nameText/shadowX', '5', 2),
	(238, 'client', 'ui/players/nameText/shadowY', '5', 2),
	(239, 'client', 'ui/players/nameText/stroke', '#000000', 1),
	(240, 'client', 'ui/players/nameText/strokeThickness', '4', 2),
	(241, 'client', 'ui/players/nameText/textLength', '4', 2),
	(242, 'client', 'ui/players/showNames', '1', 3),
	(243, 'client', 'ui/playerStats/enabled', '1', 3),
	(244, 'client', 'ui/playerStats/responsiveX', '100', 2),
	(245, 'client', 'ui/playerStats/responsiveY', '0', 2),
	(246, 'client', 'ui/playerStats/x', '430', 2),
	(247, 'client', 'ui/playerStats/y', '20', 2),
	(248, 'client', 'ui/pointer/show', '1', 3),
	(249, 'client', 'ui/pointer/topOffSet', '16', 2),
	(250, 'client', 'ui/sceneLabel/enabled', '1', 3),
	(251, 'client', 'ui/sceneLabel/responsiveX', '50', 2),
	(252, 'client', 'ui/sceneLabel/responsiveY', '0', 2),
	(253, 'client', 'ui/sceneLabel/x', '250', 2),
	(254, 'client', 'ui/sceneLabel/y', '20', 2),
	(255, 'client', 'ui/screen/responsive', '1', 3),
	(256, 'client', 'ui/settings/enabled', '1', 3),
	(257, 'client', 'ui/settings/responsiveX', '100', 2),
	(258, 'client', 'ui/settings/responsiveY', '100', 2),
	(259, 'client', 'ui/settings/x', '940', 2),
	(260, 'client', 'ui/settings/y', '280', 2),
	(261, 'client', 'ui/skills/enabled', '1', 3),
	(262, 'client', 'ui/skills/responsiveX', '0', 2),
	(263, 'client', 'ui/skills/responsiveY', '100', 2),
	(264, 'client', 'ui/skills/x', '230', 2),
	(265, 'client', 'ui/skills/y', '390', 2),
	(266, 'client', 'ui/teams/enabled', '1', 3),
	(267, 'client', 'ui/teams/responsiveX', '100', 2),
	(268, 'client', 'ui/teams/responsiveY', '0', 2),
	(269, 'client', 'ui/teams/sharedProperties', '{"hp":{"path":"stats/hp","pathMax":"statsBase/hp","label":"HP"},"mp":{"path":"stats/mp","pathMax":"statsBase/mp","label":"MP"}}', 4),
	(270, 'client', 'ui/teams/x', '430', 2),
	(271, 'client', 'ui/teams/y', '100', 2),
	(272, 'client', 'ui/trade/responsiveX', '5', 2),
	(273, 'client', 'ui/trade/responsiveY', '5', 2),
	(274, 'client', 'ui/trade/x', '5', 2),
	(275, 'client', 'ui/trade/y', '5', 2),
	(276, 'client', 'ui/uiTarget/enabled', '1', 3),
	(277, 'client', 'ui/uiTarget/hideOnDialog', '0', 3),
	(278, 'client', 'ui/uiTarget/responsiveX', '0', 2),
	(279, 'client', 'ui/uiTarget/responsiveY', '0', 2),
	(280, 'client', 'ui/uiTarget/x', '10', 2),
	(281, 'client', 'ui/uiTarget/y', '85', 2),
	(282, 'client', 'world/debug/enabled', '0', 3),
	(283, 'server', 'actions/pvp/battleTimeOff', '20000', 2),
	(284, 'server', 'actions/pvp/timerType', 'bt', 1),
	(285, 'server', 'admin/companyName', 'Reldens - Administration Panel', 1),
	(286, 'server', 'admin/faviconPath', '/assets/web/favicon.ico', 1),
	(287, 'server', 'admin/logoPath', '/assets/web/reldens-your-logo-mage.png', 1),
	(288, 'server', 'admin/roleId', '99', 2),
	(289, 'server', 'admin/stylesPath', '/css/reldens-admin.css', 1),
	(290, 'server', 'chat/messages/broadcast_join', '1', 3),
	(291, 'server', 'chat/messages/broadcast_leave', '1', 3),
	(292, 'server', 'chat/messages/global_allowed_roles', '1,9000', 1),
	(293, 'server', 'chat/messages/global_enabled', '1', 3),
	(294, 'server', 'enemies/default/affectedProperty', 'stats/hp', 1),
	(295, 'server', 'enemies/default/skillKey', 'attackShort', 1),
	(296, 'server', 'enemies/initialStats/aim', '50', 2),
	(297, 'server', 'enemies/initialStats/atk', '50', 2),
	(298, 'server', 'enemies/initialStats/def', '50', 2),
	(299, 'server', 'enemies/initialStats/dodge', '50', 2),
	(300, 'server', 'enemies/initialStats/hp', '50', 2),
	(301, 'server', 'enemies/initialStats/mp', '50', 2),
	(302, 'server', 'enemies/initialStats/speed', '50', 2),
	(303, 'server', 'enemies/initialStats/stamina', '50', 2),
	(304, 'server', 'objects/actions/closeInteractionOnOutOfReach', '1', 3),
	(305, 'server', 'objects/actions/interactionsDistance', '140', 2),
	(306, 'server', 'players/actions/initialClassPathId', '1', 2),
	(307, 'server', 'players/actions/interactionDistance', '40', 2),
	(308, 'server', 'players/gameOver/timeOut', '10000', 2),
	(309, 'server', 'players/guestUser/allowOnRooms', '0', 3),
	(310, 'server', 'players/guestUser/roleId', '2', 2),
	(311, 'server', 'players/initialState/dir', 'down', 1),
	(312, 'server', 'players/initialState/room_id', '4', 2),
	(313, 'server', 'players/initialState/x', '400', 2),
	(314, 'server', 'players/initialState/y', '345', 2),
	(315, 'server', 'players/initialUser/roleId', '1', 2),
	(316, 'server', 'players/initialUser/status', '1', 2),
	(317, 'server', 'players/physicsBody/speed', '180', 2),
	(318, 'server', 'players/physicsBody/usePlayerSpeedConfig', '0', 3),
	(319, 'server', 'players/physicsBody/usePlayerSpeedProperty', '0', 3),
	(320, 'server', 'rewards/actions/disappearTime', '1800000', 2),
	(321, 'server', 'rewards/actions/interactionsDistance', '40', 2),
	(322, 'server', 'rooms/validation/enabled', '1', 3),
	(323, 'server', 'rooms/validation/valid', 'room_game,chat_global', 1),
	(324, 'server', 'rooms/world/bulletsStopOnPlayer', '1', 3),
	(325, 'server', 'rooms/world/groupWallsHorizontally', '1', 3),
	(326, 'server', 'rooms/world/groupWallsVertically', '0', 3),
	(327, 'server', 'rooms/world/movementSpeed', '180', 2),
	(328, 'server', 'rooms/world/onlyWalkable', '1', 3),
	(329, 'server', 'rooms/world/timeStep', '0.04', 2),
	(330, 'server', 'rooms/world/tryClosestPath', '0', 3);

REPLACE INTO `features` (`id`, `code`, `title`, `is_enabled`) VALUES
	(1, 'chat', 'Chat', 1),
	(2, 'objects', 'Objects', 1),
	(3, 'respawn', 'Respawn', 1),
	(4, 'inventory', 'Inventory', 1),
	(5, 'firebase', 'Firebase', 1),
	(6, 'actions', 'Actions', 1),
	(7, 'users', 'Users', 1),
	(8, 'audio', 'Audio', 1),
	(9, 'rooms', 'Rooms', 1),
	(10, 'admin', 'Admin', 1),
	(11, 'prediction', 'Prediction', 0),
	(12, 'teams', 'Teams', 1),
	(13, 'rewards', 'Rewards', 1),
	(14, 'snippets', 'Snippets', 1),
	(16, 'ads', 'Ads', 1),
	(17, 'world', 'World', 0);

REPLACE INTO `items_types` (`id`, `key`) VALUES
	(10, 'base'),
	(1, 'equipment'),
	(3, 'single'),
	(4, 'single_equipment'),
	(5, 'single_usable'),
	(2, 'usable');

REPLACE INTO `locale` (`id`, `locale`, `language_code`, `country_code`, `enabled`) VALUES
	(1, 'en_US', 'en', 'US', 1);

REPLACE INTO `objects_types` (`id`, `key`) VALUES
	(2, 'animation'),
	(1, 'base'),
	(6, 'drop'),
	(4, 'enemy'),
	(7, 'multiple'),
	(3, 'npc'),
	(5, 'trader');

REPLACE INTO `operation_types` (`id`, `label`, `key`) VALUES
	(1, 'Increment', 1),
	(3, 'Decrease', 2),
	(4, 'Divide', 3),
	(5, 'Multiply', 4),
	(6, 'Increment Percentage', 5),
	(7, 'Decrease Percentage', 6),
	(8, 'Set', 7),
	(9, 'Method', 8),
	(10, 'Set Number', 9);

REPLACE INTO `skills_skill_type` (`id`, `key`) VALUES
	(2, 'attack'),
	(1, 'base'),
	(3, 'effect'),
	(4, 'physical_attack'),
	(5, 'physical_effect');

REPLACE INTO `target_options` (`id`, `target_key`, `target_label`) VALUES
	(1, 0, 'Object'),
	(2, 1, 'Player');

-- default user/password: root/root
REPLACE INTO `users` (`id`, `email`, `username`, `password`, `role_id`, `status`, `created_at`, `updated_at`, `played_time`) VALUES
	(1, 'root@yourgame.com', 'root', '$2b$10$SzjZph10Svebltx8Nmd7lec14wATo7ikEQQ0WEA0YZ188qGWHDu8S', 99, '1', '2022-03-17 18:57:44', '2023-10-21 16:51:55', 0);

REPLACE INTO `users_locale` (`id`, `locale_id`, `user_id`) VALUES
	(1, 1, 1);

--

SET FOREIGN_KEY_CHECKS = 1;

--
