.class Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Application$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private receivedDocument:Z


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-void
.end method

.method static synthetic access$000(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->receivedDocument:Z

    return p0
.end method

.method static synthetic access$002(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->receivedDocument:Z

    return p1
.end method

.method static synthetic access$100(Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application$1$extraCallback;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object p0
.end method
