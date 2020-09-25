.class public final Lo/isViewFromLeft;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Lo/raiseEvents;

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsService:I

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field final extraCallback:Lo/getIndexStartName;

.field private getInterfaceDescriptor:I

.field final onMessageChannelReady:Lo/convertInteger;

.field public final onNavigationEvent:Lo/isCompleteForChild;

.field public final onPostMessage:Lo/getIndexEndValue;

.field private final onRelationshipValidationResult:I

.field final onTransact:Lo/resolveType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;ILo/isCompleteForChild;Lo/convertInteger;Lo/resolveType;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;",
            "Lo/getIndexEndValue;",
            "Lo/getIndexStartName;",
            "Lo/raiseEvents;",
            "I",
            "Lo/isCompleteForChild;",
            "Lo/convertInteger;",
            "Lo/resolveType;",
            "III)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    .line 54
    iput-object p4, p0, Lo/isViewFromLeft;->ICustomTabsCallback:Lo/raiseEvents;

    .line 55
    iput-object p2, p0, Lo/isViewFromLeft;->onPostMessage:Lo/getIndexEndValue;

    .line 56
    iput-object p3, p0, Lo/isViewFromLeft;->extraCallback:Lo/getIndexStartName;

    .line 57
    iput p5, p0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    .line 58
    iput-object p6, p0, Lo/isViewFromLeft;->onNavigationEvent:Lo/isCompleteForChild;

    .line 59
    iput-object p7, p0, Lo/isViewFromLeft;->onMessageChannelReady:Lo/convertInteger;

    .line 60
    iput-object p8, p0, Lo/isViewFromLeft;->onTransact:Lo/resolveType;

    .line 61
    iput p9, p0, Lo/isViewFromLeft;->asInterface:I

    .line 62
    iput p10, p0, Lo/isViewFromLeft;->onRelationshipValidationResult:I

    .line 63
    iput p11, p0, Lo/isViewFromLeft;->ICustomTabsService:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 71
    iget v0, p0, Lo/isViewFromLeft;->asInterface:I

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 81
    iget v0, p0, Lo/isViewFromLeft;->onRelationshipValidationResult:I

    return v0
.end method

.method public final onNavigationEvent()Lo/isCompleteForChild;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/isViewFromLeft;->onNavigationEvent:Lo/isCompleteForChild;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 91
    iget v0, p0, Lo/isViewFromLeft;->ICustomTabsService:I

    return v0
.end method

.method public final onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/isViewFromLeft;->onPostMessage:Lo/getIndexEndValue;

    iget-object v1, p0, Lo/isViewFromLeft;->extraCallback:Lo/getIndexStartName;

    iget-object v2, p0, Lo/isViewFromLeft;->ICustomTabsCallback:Lo/raiseEvents;

    invoke-virtual {p0, p1, v0, v1, v2}, Lo/isViewFromLeft;->onPostMessage(Lo/isCompleteForChild;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;)Lo/childAddedChange;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/isCompleteForChild;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;)Lo/childAddedChange;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 126
    iget v1, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    iget-object v2, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 128
    iget v1, v0, Lo/isViewFromLeft;->getInterfaceDescriptor:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lo/isViewFromLeft;->getInterfaceDescriptor:I

    .line 131
    iget-object v1, v0, Lo/isViewFromLeft;->extraCallback:Lo/getIndexStartName;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/isViewFromLeft;->ICustomTabsCallback:Lo/raiseEvents;

    move-object/from16 v10, p1

    .line 1049
    iget-object v4, v10, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 131
    invoke-virtual {v1, v4}, Lo/raiseEvents;->extraCallback(Lo/isFullyInitialized;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    iget v5, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v10, p1

    .line 137
    :goto_0
    iget-object v1, v0, Lo/isViewFromLeft;->extraCallback:Lo/getIndexStartName;

    const-string v15, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lo/isViewFromLeft;->getInterfaceDescriptor:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    iget v5, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3
    :goto_1
    new-instance v1, Lo/isViewFromLeft;

    iget-object v5, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    iget v4, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    add-int/lit8 v9, v4, 0x1

    iget-object v11, v0, Lo/isViewFromLeft;->onMessageChannelReady:Lo/convertInteger;

    iget-object v12, v0, Lo/isViewFromLeft;->onTransact:Lo/resolveType;

    iget v13, v0, Lo/isViewFromLeft;->asInterface:I

    iget v14, v0, Lo/isViewFromLeft;->onRelationshipValidationResult:I

    iget v8, v0, Lo/isViewFromLeft;->ICustomTabsService:I

    move-object v4, v1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v16, v8

    move-object/from16 v8, p4

    move-object/from16 v10, p1

    move-object/from16 v17, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lo/isViewFromLeft;-><init>(Ljava/util/List;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;ILo/isCompleteForChild;Lo/convertInteger;Lo/resolveType;III)V

    .line 146
    iget-object v4, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    iget v5, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/annotatedName;

    .line 147
    invoke-interface {v4, v1}, Lo/annotatedName;->extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;

    move-result-object v5

    if-eqz p3, :cond_5

    .line 150
    iget v6, v0, Lo/isViewFromLeft;->ICustomTabsCallback$Stub:I

    add-int/2addr v6, v2

    iget-object v7, v0, Lo/isViewFromLeft;->asBinder:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget v1, v1, Lo/isViewFromLeft;->getInterfaceDescriptor:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 151
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v5, :cond_7

    .line 1177
    iget-object v2, v5, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v2, :cond_6

    return-object v5

    .line 161
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
