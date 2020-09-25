.class final Lo/UnityVersionProvider$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnityVersionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public final extraCallback:Ljava/lang/String;

.field public final onPostMessage:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lo/UnityVersionProvider$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lo/UnityVersionProvider$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    .line 166
    iput-wide p3, p0, Lo/UnityVersionProvider$onMessageChannelReady;->ICustomTabsCallback:J

    return-void
.end method
