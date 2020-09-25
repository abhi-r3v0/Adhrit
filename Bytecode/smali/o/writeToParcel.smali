.class public final Lo/writeToParcel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeToParcel$onMessageChannelReady;,
        Lo/writeToParcel$ICustomTabsCallback;,
        Lo/writeToParcel$onPostMessage;,
        Lo/writeToParcel$extraCallback;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I


# instance fields
.field public final ICustomTabsCallback:[F

.field public final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2106
    invoke-static {}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->values()[Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/writeToParcel;->$SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I

    :try_start_0
    sget-object v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->PREVIOUS:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/writeToParcel;->$SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I

    sget-object v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->ESTIMATE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

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
    .locals 0

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F[I)V
    .locals 0

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 1013
    iput-object p2, p0, Lo/writeToParcel;->onPostMessage:[I

    return-void
.end method

.method public static onPostMessage(Lo/writeToParcel$extraCallback;)Lo/getBatteryLevel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeToParcel$extraCallback<",
            "TT;>;)",
            "Lo/getBatteryLevel<",
            "TT;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lo/writeToParcel$ICustomTabsCallback;

    invoke-direct {v0}, Lo/writeToParcel$ICustomTabsCallback;-><init>()V

    .line 90
    new-instance v1, Lo/writeToParcel$onPostMessage;

    invoke-direct {v1, v0}, Lo/writeToParcel$onPostMessage;-><init>(Lo/writeToParcel$ICustomTabsCallback;)V

    .line 91
    iput-object v1, v0, Lo/writeToParcel$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeToParcel$onPostMessage;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;

    .line 102
    :try_start_0
    invoke-interface {p0, v0}, Lo/writeToParcel$extraCallback;->onNavigationEvent(Lo/writeToParcel$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 104
    iput-object p0, v0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {v1, p0}, Lo/writeToParcel$onPostMessage;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-object v1
.end method
