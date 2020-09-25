.class final Lo/buildInstanceIdentifierChanged$onPostMessage;
.super Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Z

.field final onNavigationEvent:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    .line 184
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/buildInstanceIdentifierChanged$onPostMessage;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    .line 192
    invoke-direct {p0, p3, p2}, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 193
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 194
    iput-boolean p4, p0, Lo/buildInstanceIdentifierChanged$onPostMessage;->extraCallback:Z

    .line 195
    iput-object p5, p0, Lo/buildInstanceIdentifierChanged$onPostMessage;->onNavigationEvent:Lorg/json/JSONObject;

    return-void
.end method
