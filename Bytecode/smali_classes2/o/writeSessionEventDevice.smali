.class public Lo/writeSessionEventDevice;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeSessionEventDevice$extraCallback;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Z = false

.field private static extraCallback:Z = true

.field static final onNavigationEvent:Lo/writeSessionEventDevice;

.field private static volatile onPostMessage:Lo/writeSessionEventDevice;


# instance fields
.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/writeSessionEventDevice$extraCallback;",
            "Lo/getEventAppExecutionSize$onMessageChannelReady<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 199
    new-instance v0, Lo/writeSessionEventDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/writeSessionEventDevice;-><init>(B)V

    sput-object v0, Lo/writeSessionEventDevice;->onNavigationEvent:Lo/writeSessionEventDevice;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/writeSessionEventDevice;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/writeSessionEventDevice;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method

.method public static onMessageChannelReady()Lo/writeSessionEventDevice;
    .locals 2

    .line 128
    sget-object v0, Lo/writeSessionEventDevice;->onPostMessage:Lo/writeSessionEventDevice;

    if-nez v0, :cond_2

    .line 130
    const-class v0, Lo/writeSessionEventDevice;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lo/writeSessionEventDevice;->onPostMessage:Lo/writeSessionEventDevice;

    if-nez v1, :cond_1

    .line 133
    sget-boolean v1, Lo/writeSessionEventDevice;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lo/writeFrame;->onNavigationEvent()Lo/writeSessionEventDevice;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lo/writeSessionEventDevice;->onNavigationEvent:Lo/writeSessionEventDevice;

    :goto_0
    sput-object v1, Lo/writeSessionEventDevice;->onPostMessage:Lo/writeSessionEventDevice;

    .line 139
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method
