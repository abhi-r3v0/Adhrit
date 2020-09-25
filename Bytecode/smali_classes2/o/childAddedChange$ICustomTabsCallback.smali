.class public final Lo/childAddedChange$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/childAddedChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:Lo/getChildKey;

.field public asBinder:Lo/shouldIncludeField$onMessageChannelReady;

.field public asInterface:Lo/childAddedChange;

.field public extraCallback:Lo/valueChange;

.field public getInterfaceDescriptor:J

.field public newSession:J

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lo/isCompleteForChild;

.field public onPostMessage:Lo/isSetterOverride;

.field public onRelationshipValidationResult:Lo/childAddedChange;

.field public onTransact:Lo/childAddedChange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 306
    iput v0, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 318
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Lo/childAddedChange;)V
    .locals 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 306
    iput v0, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 322
    iget-object v0, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 323
    iget-object v0, p1, Lo/childAddedChange;->ICustomTabsCallback:Lo/valueChange;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    .line 324
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    iput v0, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 325
    iget-object v0, p1, Lo/childAddedChange;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Lo/childAddedChange;->onPostMessage:Lo/isSetterOverride;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage:Lo/isSetterOverride;

    .line 327
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 1131
    new-instance v1, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v1}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 1132
    iget-object v2, v1, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 327
    iput-object v1, p0, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    .line 328
    iget-object v0, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 329
    iget-object v0, p1, Lo/childAddedChange;->ICustomTabsCallback$Stub:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onTransact:Lo/childAddedChange;

    .line 330
    iget-object v0, p1, Lo/childAddedChange;->asInterface:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->asInterface:Lo/childAddedChange;

    .line 331
    iget-object v0, p1, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onRelationshipValidationResult:Lo/childAddedChange;

    .line 332
    iget-wide v0, p1, Lo/childAddedChange;->newSession:J

    iput-wide v0, p0, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 333
    iget-wide v0, p1, Lo/childAddedChange;->getInterfaceDescriptor:J

    iput-wide v0, p0, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V
    .locals 1

    .line 408
    iget-object v0, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p1, Lo/childAddedChange;->ICustomTabsCallback$Stub:Lo/childAddedChange;

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p1, Lo/childAddedChange;->asInterface:Lo/childAddedChange;

    if-nez v0, :cond_1

    .line 414
    iget-object p1, p1, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    if-nez p1, :cond_0

    return-void

    .line 415
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".priorResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cacheResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".networkResponse != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".body != null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onPostMessage()Lo/childAddedChange;
    .locals 3

    .line 442
    iget-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    if-eqz v0, :cond_2

    .line 444
    iget v0, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    if-ltz v0, :cond_1

    .line 445
    iget-object v0, p0, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lo/childAddedChange;

    invoke-direct {v0, p0}, Lo/childAddedChange;-><init>(Lo/childAddedChange$ICustomTabsCallback;)V

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
