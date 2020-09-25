.class public Lo/setCountry;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile extraCallback:Lo/setCountry; = null

.field private static volatile onMessageChannelReady:Z = false

.field private static onNavigationEvent:Z = true

.field private static final onPostMessage:Lo/setCountry;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/setCountry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/setCountry;-><init>(Z)V

    sput-object v0, Lo/setCountry;->onPostMessage:Lo/setCountry;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setCountry;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/setCountry;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method public static onMessageChannelReady()Lo/setCountry;
    .locals 2

    .line 1
    sget-object v0, Lo/setCountry;->extraCallback:Lo/setCountry;

    if-nez v0, :cond_1

    .line 3
    const-class v1, Lo/setCountry;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lo/setCountry;->extraCallback:Lo/setCountry;

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lo/setCountry;->onPostMessage:Lo/setCountry;

    sput-object v0, Lo/setCountry;->extraCallback:Lo/setCountry;

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
