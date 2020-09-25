.class final Lo/SettingsJsonConstants$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SettingsJsonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Z

.field public onMessageChannelReady:Lorg/json/JSONArray;

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lorg/json/JSONArray;

.field public onTransact:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SettingsJsonConstants$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SettingsJsonConstants$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 53
    invoke-static {}, Lo/SettingsJsonConstants;->onPostMessage()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsJsonConstants$onPostMessage;->onMessageChannelReady:Lorg/json/JSONArray;

    .line 54
    invoke-static {}, Lo/SettingsJsonConstants;->onPostMessage()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lo/SettingsJsonConstants$onPostMessage;->onPostMessage:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lo/SettingsJsonConstants$onPostMessage;->extraCallback:Z

    return-void
.end method
