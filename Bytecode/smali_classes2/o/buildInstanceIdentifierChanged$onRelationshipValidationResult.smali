.class final Lo/buildInstanceIdentifierChanged$onRelationshipValidationResult;
.super Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onRelationshipValidationResult"
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0, p2, p1}, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1300
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
