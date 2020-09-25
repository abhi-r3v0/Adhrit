.class final Lo/MediaDescriptionCompat$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaDescriptionCompat$1$onPostMessage;
    }
.end annotation


# static fields
.field protected static final ICustomTabsCallback:Ljava/lang/reflect/Method;

.field private static final asInterface:Landroid/os/Handler;

.field private static extraCallback:Ljava/lang/reflect/Field;

.field private static onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final onNavigationEvent:Ljava/lang/reflect/Method;

.field private static onPostMessage:Ljava/lang/reflect/Field;

.field private static onRelationshipValidationResult:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/MediaDescriptionCompat$1;->asInterface:Landroid/os/Handler;

    .line 93
    invoke-static {}, Lo/MediaDescriptionCompat$1;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->onMessageChannelReady:Ljava/lang/Class;

    .line 94
    invoke-static {}, Lo/MediaDescriptionCompat$1;->onNavigationEvent()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->onPostMessage:Ljava/lang/reflect/Field;

    .line 95
    invoke-static {}, Lo/MediaDescriptionCompat$1;->onMessageChannelReady()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->extraCallback:Ljava/lang/reflect/Field;

    .line 96
    sget-object v0, Lo/MediaDescriptionCompat$1;->onMessageChannelReady:Ljava/lang/Class;

    invoke-static {v0}, Lo/MediaDescriptionCompat$1;->onPostMessage(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->onNavigationEvent:Ljava/lang/reflect/Method;

    .line 97
    sget-object v0, Lo/MediaDescriptionCompat$1;->onMessageChannelReady:Ljava/lang/Class;

    invoke-static {v0}, Lo/MediaDescriptionCompat$1;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    .line 98
    sget-object v0, Lo/MediaDescriptionCompat$1;->onMessageChannelReady:Ljava/lang/Class;

    invoke-static {v0}, Lo/MediaDescriptionCompat$1;->onMessageChannelReady(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/MediaDescriptionCompat$1;->onRelationshipValidationResult:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 361
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static ICustomTabsCallback(Landroid/app/Activity;)Z
    .locals 10

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    .line 1313
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 114
    sget-object v0, Lo/MediaDescriptionCompat$1;->onRelationshipValidationResult:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    return v4

    .line 119
    :cond_3
    sget-object v0, Lo/MediaDescriptionCompat$1;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget-object v0, Lo/MediaDescriptionCompat$1;->onNavigationEvent:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    return v4

    .line 123
    :cond_4
    :try_start_0
    sget-object v0, Lo/MediaDescriptionCompat$1;->extraCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    return v4

    .line 127
    :cond_5
    sget-object v5, Lo/MediaDescriptionCompat$1;->onPostMessage:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    return v4

    .line 132
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    .line 133
    new-instance v7, Lo/MediaDescriptionCompat$1$onPostMessage;

    invoke-direct {v7, p0}, Lo/MediaDescriptionCompat$1$onPostMessage;-><init>(Landroid/app/Activity;)V

    .line 134
    invoke-virtual {v6, v7}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 142
    sget-object v8, Lo/MediaDescriptionCompat$1;->asInterface:Landroid/os/Handler;

    new-instance v9, Lo/MediaDescriptionCompat$1$4;

    invoke-direct {v9, v7, v0}, Lo/MediaDescriptionCompat$1$4;-><init>(Lo/MediaDescriptionCompat$1$onPostMessage;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2313
    :try_start_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v8, v3, :cond_8

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    .line 151
    sget-object p0, Lo/MediaDescriptionCompat$1;->onRelationshipValidationResult:Ljava/lang/reflect/Method;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x0

    aput-object v0, v2, v1

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x4

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    const/4 v0, 0x7

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    .line 151
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 154
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_4
    :try_start_2
    sget-object p0, Lo/MediaDescriptionCompat$1;->asInterface:Landroid/os/Handler;

    new-instance v0, Lo/MediaDescriptionCompat$1$5;

    invoke-direct {v0, v6, v7}, Lo/MediaDescriptionCompat$1$5;-><init>(Landroid/app/Application;Lo/MediaDescriptionCompat$1$onPostMessage;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :catchall_0
    move-exception p0

    sget-object v0, Lo/MediaDescriptionCompat$1;->asInterface:Landroid/os/Handler;

    new-instance v1, Lo/MediaDescriptionCompat$1$5;

    invoke-direct {v1, v6, v7}, Lo/MediaDescriptionCompat$1$5;-><init>(Landroid/app/Application;Lo/MediaDescriptionCompat$1$onPostMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v4
.end method

.method private static onMessageChannelReady()Ljava/lang/reflect/Field;
    .locals 2

    .line 351
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 3313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    const-string v0, "requestRelaunchActivity"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Class;

    .line 321
    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    const-class v1, Ljava/util/List;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v1

    const/4 v1, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v1, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v4, v1

    const/4 v1, 0x7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/16 v1, 0x8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_3
    :goto_2
    return-object v3
.end method

.method private static onNavigationEvent()Ljava/lang/reflect/Field;
    .locals 2

    .line 341
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static onNavigationEvent(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 303
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 305
    invoke-virtual {p0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 289
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 291
    invoke-virtual {p0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method protected static onPostMessage(Ljava/lang/Object;Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    .line 244
    :try_start_0
    sget-object v1, Lo/MediaDescriptionCompat$1;->extraCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_0

    return v0

    .line 248
    :cond_0
    sget-object p0, Lo/MediaDescriptionCompat$1;->onPostMessage:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 252
    sget-object p1, Lo/MediaDescriptionCompat$1;->asInterface:Landroid/os/Handler;

    new-instance v2, Lo/MediaDescriptionCompat$1$3;

    invoke-direct {v2, p0, v1}, Lo/MediaDescriptionCompat$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "ActivityRecreator"

    const-string v1, "Exception while fetching field values"

    .line 279
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
