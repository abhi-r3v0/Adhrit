.class public abstract Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;,
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;,
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;,
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;,
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final DELETE_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

.field private static final SERVER_TIMESTAMP_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    invoke-direct {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->DELETE_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    .line 106
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;

    invoke-direct {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;-><init>()V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->SERVER_TIMESTAMP_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs arrayRemove([Ljava/lang/Object;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 150
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$extraCallback;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs arrayUnion([Ljava/lang/Object;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 136
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onMessageChannelReady;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static delete()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 112
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->DELETE_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$ICustomTabsCallback;

    return-object v0
.end method

.method public static increment(D)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 183
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public static increment(J)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 168
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onNavigationEvent;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public static serverTimestamp()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;
    .locals 1

    .line 121
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->SERVER_TIMESTAMP_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder$onPostMessage;

    return-object v0
.end method


# virtual methods
.method abstract getMethodName()Ljava/lang/String;
.end method
