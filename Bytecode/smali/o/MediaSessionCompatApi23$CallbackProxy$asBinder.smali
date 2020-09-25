.class Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi23$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asBinder"
.end annotation


# instance fields
.field private final onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 975
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 976
    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 1003
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1008
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 981
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>()V

    .line 982
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 988
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>()V

    .line 989
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 995
    new-instance v0, Lo/MediaSessionCompatApi23$CallbackProxy;

    invoke-direct {v0}, Lo/MediaSessionCompatApi23$CallbackProxy;-><init>()V

    .line 996
    iget-object v1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$asBinder;->onPostMessage:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 997
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Lo/MediaSessionCompatApi24;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
