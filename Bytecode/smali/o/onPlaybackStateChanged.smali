.class public final Lo/onPlaybackStateChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPlaybackStateChanged$onNavigationEvent;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Z = false

.field private static extraCallback:Ljava/lang/reflect/Method; = null

.field private static onMessageChannelReady:Ljava/lang/reflect/Field; = null

.field private static onPostMessage:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static extraCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady(Lo/onPlaybackStateChanged$onNavigationEvent;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 83
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 84
    invoke-interface {p0, p3}, Lo/onPlaybackStateChanged$onNavigationEvent;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 86
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 87
    check-cast p2, Landroid/app/Activity;

    .line 1115
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 1117
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    .line 1121
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1122
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 1123
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 1125
    invoke-static {p1, p3}, Lo/onPlaybackStateChanged;->onPostMessage(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    .line 1130
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    .line 1133
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1134
    invoke-static {p0, p3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    if-eqz p0, :cond_5

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1137
    :cond_5
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 88
    :cond_6
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_b

    .line 89
    check-cast p2, Landroid/app/Dialog;

    .line 1161
    invoke-static {p2}, Lo/onPlaybackStateChanged;->onPostMessage(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 1162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    .line 1165
    :cond_7
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 1166
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v3

    .line 1169
    :cond_8
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1170
    invoke-static {p0, p3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    if-eqz p0, :cond_a

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 1173
    :cond_a
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    if-eqz p1, :cond_c

    .line 91
    invoke-static {p1, p3}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 92
    :cond_c
    invoke-interface {p0, p3}, Lo/onPlaybackStateChanged$onNavigationEvent;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    return v3

    :cond_e
    return v0
.end method

.method private static onPostMessage(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 3

    .line 142
    sget-boolean v0, Lo/onPlaybackStateChanged;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 144
    :try_start_0
    const-class v1, Landroid/app/Dialog;

    const-string v2, "mOnKeyListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    sput-object v1, Lo/onPlaybackStateChanged;->onMessageChannelReady:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    sput-boolean v0, Lo/onPlaybackStateChanged;->onPostMessage:Z

    .line 151
    :cond_0
    sget-object v0, Lo/onPlaybackStateChanged;->onMessageChannelReady:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onPostMessage(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .locals 6

    .line 96
    sget-boolean v0, Lo/onPlaybackStateChanged;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "onMenuKeyEvent"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/onPlaybackStateChanged;->extraCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    sput-boolean v1, Lo/onPlaybackStateChanged;->ICustomTabsCallback:Z

    .line 104
    :cond_0
    sget-object v0, Lo/onPlaybackStateChanged;->extraCallback:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 106
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_1
    return v2
.end method
