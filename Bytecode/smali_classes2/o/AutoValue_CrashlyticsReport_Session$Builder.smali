.class public Lo/AutoValue_CrashlyticsReport_Session$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final type:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->type:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    .line 33
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lo/AutoValue_CrashlyticsReport_Session$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session$Builder;

    .line 50
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->type:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getType()Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method

.method public getType()Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->type:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->type:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x81d

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session$Builder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
