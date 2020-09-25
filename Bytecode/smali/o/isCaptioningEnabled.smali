.class public final Lo/isCaptioningEnabled;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Ljava/lang/reflect/Field;

.field private static onPostMessage:Z


# direct methods
.method public static ICustomTabsCallback(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    instance-of v0, p0, Lo/playFromMediaId;

    if-eqz v0, :cond_1

    .line 75
    check-cast p0, Lo/playFromMediaId;

    invoke-interface {p0}, Lo/playFromMediaId;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 59
    :cond_0
    instance-of v0, p0, Lo/playFromMediaId;

    if-eqz v0, :cond_1

    .line 60
    check-cast p0, Lo/playFromMediaId;

    invoke-interface {p0, p1}, Lo/playFromMediaId;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    sget-boolean v0, Lo/isCaptioningEnabled;->onPostMessage:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 129
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 130
    sput-object v2, Lo/isCaptioningEnabled;->onNavigationEvent:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    .line 132
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_0
    sput-boolean v0, Lo/isCaptioningEnabled;->onPostMessage:Z

    .line 137
    :cond_1
    sget-object v0, Lo/isCaptioningEnabled;->onNavigationEvent:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 139
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    .line 141
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    sput-object v2, Lo/isCaptioningEnabled;->onNavigationEvent:Ljava/lang/reflect/Field;

    :cond_2
    return-object v2
.end method

.method public static onPostMessage(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 95
    :cond_0
    instance-of v0, p0, Lo/playFromMediaId;

    if-eqz v0, :cond_1

    .line 96
    check-cast p0, Lo/playFromMediaId;

    invoke-interface {p0, p1}, Lo/playFromMediaId;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method
