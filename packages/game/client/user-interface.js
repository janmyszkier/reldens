
class UserInterface
{

    initialTitle = '';
    initialContent = '';

    constructor(gameManager, id, template = 'assets/html/npc-dialog.html')
    {
        this.id = id;
        this.template = template;
        gameManager.events.on('reldens.preloadUiScene', (preloadScene) => {
            preloadScene.load.html(this.id, this.template);
        });
        gameManager.events.on('reldens.createUiScene', (preloadScene) => {
            let dialogBox = preloadScene.add.dom(20, 70).createFromCache(this.id);
            let messageTemplate = preloadScene.cache.html.get(this.id);
            dialogBox.innerHTML = preloadScene.gameManager.gameEngine.TemplateEngine.render(messageTemplate, {
                title: this.initialTitle,
                content: this.initialContent
            });
            let dialogContainer = dialogBox.getChildByProperty('className', 'ux-box ux-box-npc-dialog');
            dialogContainer.id = 'box-'+this.id;
            let boxClose = dialogBox.getChildByProperty('className', 'box-close');
            if(boxClose){
                boxClose.addEventListener('click', () => {
                    dialogContainer.style.display = 'none';
                });
            }
            preloadScene.userInterfaces[this.id] = dialogBox;
        });
    }

}

module.exports.UserInterface = UserInterface;
