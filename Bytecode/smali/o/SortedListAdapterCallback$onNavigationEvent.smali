.class public final Lo/SortedListAdapterCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SortedListAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SortedListAdapterCallback$onNavigationEvent$ICustomTabsCallback;,
        Lo/SortedListAdapterCallback$onNavigationEvent$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefDelegate$Companion;",
        "",
        "()V",
        "InitializedValue",
        "UninitializedValue",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SortedListAdapterCallback$onNavigationEvent;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/SortedListAdapterCallback$onNavigationEvent;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/SortedListAdapterCallback$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/SortedListAdapterCallback$onNavigationEvent;-><init>(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/SortedListAdapterCallback$onNavigationEvent;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/SortedListAdapterCallback$onNavigationEvent;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$addSnapshotsInSyncListener$14(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-void
.end method
