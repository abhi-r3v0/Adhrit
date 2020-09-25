.class public Lo/getCustomKeys;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils;


# instance fields
.field private final eventRegistration:Lo/addDelayedShutdownHook;

.field private final eventType:Lo/Utils$onNavigationEvent;

.field private final prevName:Ljava/lang/String;

.field private final snapshot:Lo/CrashlyticsLifecycleEvents;


# direct methods
.method public constructor <init>(Lo/Utils$onNavigationEvent;Lo/addDelayedShutdownHook;Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    .line 34
    iput-object p2, p0, Lo/getCustomKeys;->eventRegistration:Lo/addDelayedShutdownHook;

    .line 35
    iput-object p3, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    .line 36
    iput-object p4, p0, Lo/getCustomKeys;->prevName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/getCustomKeys;->eventRegistration:Lo/addDelayedShutdownHook;

    invoke-virtual {v0, p0}, Lo/addDelayedShutdownHook;->fireEvent(Lo/getCustomKeys;)V

    return-void
.end method

.method public getEventType()Lo/Utils$onNavigationEvent;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    return-object v0
.end method

.method public getPath()Lo/ExecutorUtils$2;
    .locals 3

    .line 41
    iget-object v0, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    invoke-virtual {v0}, Lo/CrashlyticsLifecycleEvents;->getRef()Lo/isPresent;

    move-result-object v0

    invoke-virtual {v0}, Lo/buildReportData;->getPath()Lo/ExecutorUtils$2;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    sget-object v2, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/getCustomKeys;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lo/CrashlyticsLifecycleEvents;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 68
    iget-object v0, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    sget-object v1, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, ": "

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/getCustomKeys;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    invoke-virtual {v1, v2}, Lo/CrashlyticsLifecycleEvents;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/getCustomKeys;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getCustomKeys;->eventType:Lo/Utils$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    .line 75
    invoke-virtual {v1}, Lo/CrashlyticsLifecycleEvents;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getCustomKeys;->snapshot:Lo/CrashlyticsLifecycleEvents;

    .line 77
    invoke-virtual {v1, v2}, Lo/CrashlyticsLifecycleEvents;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
