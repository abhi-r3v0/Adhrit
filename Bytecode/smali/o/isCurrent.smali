.class public final Lo/isCurrent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isCurrent$extraCallback;,
        Lo/isCurrent$onNavigationEvent;,
        Lo/isCurrent$onMessageChannelReady;,
        Lo/isCurrent$ICustomTabsCallback;,
        Lo/isCurrent$onPostMessage;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I


# instance fields
.field public final onMessageChannelReady:Landroid/graphics/PointF;

.field public final onNavigationEvent:Landroid/graphics/PointF;

.field public final onPostMessage:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1143
    invoke-static {}, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->values()[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isCurrent;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    :try_start_0
    sget-object v1, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/isCurrent;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    sget-object v1, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V2:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 1016
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    .line 1017
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 1022
    iput-object p2, p0, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    .line 1023
    iput-object p3, p0, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    return-void
.end method
