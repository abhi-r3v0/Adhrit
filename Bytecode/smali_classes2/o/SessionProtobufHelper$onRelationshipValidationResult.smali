.class abstract Lo/SessionProtobufHelper$onRelationshipValidationResult;
.super Lo/SessionProtobufHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionProtobufHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onRelationshipValidationResult"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lo/SessionProtobufHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback$Stub()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 873
    invoke-super {p0}, Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method abstract onMessageChannelReady(Lo/SessionProtobufHelper;II)Z
.end method

.method protected final onRelationshipValidationResult()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
