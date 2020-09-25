.class public final Lo/getExtraData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/getExtraData;

.field private static final onPostMessage:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lo/MediaSessionCompat$1$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lo/setStatusBarBackgroundColor;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lo/setMinHeight;",
            "Lo/setStatusBarBackgroundColor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 23
    const-class v2, Lo/setGuidelineBegin;

    aput-object v2, v0, v1

    sput-object v0, Lo/getExtraData;->onPostMessage:[Ljava/lang/Class;

    .line 28
    new-instance v0, Lo/getExtraData;

    invoke-direct {v0}, Lo/getExtraData;-><init>()V

    sput-object v0, Lo/getExtraData;->extraCallback:Lo/getExtraData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getExtraData;->onNavigationEvent:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getExtraData;->ICustomTabsCallback:Ljava/util/Map;

    .line 51
    invoke-direct {p0}, Lo/getExtraData;->onPostMessage()V

    return-void
.end method

.method public static onNavigationEvent()Lo/getExtraData;
    .locals 1

    .line 36
    sget-object v0, Lo/getExtraData;->extraCallback:Lo/getExtraData;

    return-object v0
.end method

.method private onPostMessage()V
    .locals 13

    .line 58
    sget-object v0, Lo/getExtraData;->onPostMessage:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 64
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 65
    new-instance v11, Lo/setStatusBarBackgroundColor;

    invoke-direct {v11}, Lo/setStatusBarBackgroundColor;-><init>()V

    const/4 v12, 0x1

    .line 66
    invoke-virtual {v10, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1149
    iput-object v10, v11, Lo/setStatusBarBackgroundColor;->onNavigationEvent:Ljava/lang/reflect/Field;

    .line 68
    const-class v12, Lo/dispatchKeyShortcutEvent;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lo/dispatchKeyShortcutEvent;

    if-eqz v10, :cond_0

    .line 70
    invoke-virtual {v11, v10}, Lo/setStatusBarBackgroundColor;->onMessageChannelReady(Lo/dispatchKeyShortcutEvent;)V

    .line 1158
    iget-object v10, v11, Lo/setStatusBarBackgroundColor;->asBinder:Lo/setMinHeight;

    .line 71
    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :try_start_0
    invoke-virtual {v11}, Lo/setStatusBarBackgroundColor;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/setStatusBarBackgroundColor;

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 79
    :cond_1
    iget-object v7, p0, Lo/getExtraData;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v6, p0, Lo/getExtraData;->onNavigationEvent:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
