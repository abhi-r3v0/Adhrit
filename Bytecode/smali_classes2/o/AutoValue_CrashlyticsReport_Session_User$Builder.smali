.class public abstract Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final version:Lo/withNdkPayload;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 29
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->version:Lo/withNdkPayload;

    return-void
.end method


# virtual methods
.method public getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method

.method public getVersion()Lo/withNdkPayload;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->version:Lo/withNdkPayload;

    return-object v0
.end method

.method public abstract hasPendingWrites()Z
.end method
