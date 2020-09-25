.class public final Lo/childAddedChange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/childAddedChange$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/valueChange;

.field public final ICustomTabsCallback$Stub:Lo/childAddedChange;

.field public final asBinder:Lo/shouldIncludeField;

.field final asInterface:Lo/childAddedChange;

.field public final extraCallback:Ljava/lang/String;

.field public final getInterfaceDescriptor:J

.field public final newSession:J

.field public final onMessageChannelReady:Lo/isCompleteForChild;

.field public final onNavigationEvent:I

.field public final onPostMessage:Lo/isSetterOverride;

.field public final onRelationshipValidationResult:Lo/getChildKey;

.field public final onTransact:Lo/childAddedChange;

.field public volatile warmup:Lo/loadOrCreateBeanMapperForClass;


# direct methods
.method constructor <init>(Lo/childAddedChange$ICustomTabsCallback;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    iput-object v0, p0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 61
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    iput-object v0, p0, Lo/childAddedChange;->ICustomTabsCallback:Lo/valueChange;

    .line 62
    iget v0, p1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    iput v0, p0, Lo/childAddedChange;->onNavigationEvent:I

    .line 63
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iput-object v0, p0, Lo/childAddedChange;->extraCallback:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage:Lo/isSetterOverride;

    iput-object v0, p0, Lo/childAddedChange;->onPostMessage:Lo/isSetterOverride;

    .line 65
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    .line 1401
    new-instance v1, Lo/shouldIncludeField;

    invoke-direct {v1, v0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 65
    iput-object v1, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 66
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    iput-object v0, p0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 67
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->onTransact:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange;->ICustomTabsCallback$Stub:Lo/childAddedChange;

    .line 68
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->asInterface:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange;->asInterface:Lo/childAddedChange;

    .line 69
    iget-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->onRelationshipValidationResult:Lo/childAddedChange;

    iput-object v0, p0, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    .line 70
    iget-wide v0, p1, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    iput-wide v0, p0, Lo/childAddedChange;->newSession:J

    .line 71
    iget-wide v0, p1, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    iput-wide v0, p0, Lo/childAddedChange;->getInterfaceDescriptor:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 285
    iget-object v0, p0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lo/getChildKey;->close()V

    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/childAddedChange;->ICustomTabsCallback:Lo/valueChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/childAddedChange;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/childAddedChange;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 2049
    iget-object v1, v1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
