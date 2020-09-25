.class Lo/createItem$onMessageChannelReady;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 548
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 549
    iput-object p1, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 586
    iget-object v0, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 554
    new-instance v0, Lo/createItem;

    invoke-direct {v0}, Lo/createItem;-><init>()V

    .line 556
    iget-object v1, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 557
    iget-object v1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lo/createItem;->onPostMessage:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 563
    new-instance v0, Lo/createItem;

    invoke-direct {v0}, Lo/createItem;-><init>()V

    .line 565
    iget-object v1, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 566
    iget-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lo/createItem;->onPostMessage:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 572
    new-instance v0, Lo/createItem;

    invoke-direct {v0}, Lo/createItem;-><init>()V

    .line 574
    iget-object v1, p0, Lo/createItem$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 575
    iget-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    iget-object p2, v0, Lo/createItem;->onPostMessage:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method
