.class final Lo/MiddleOutStrategy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MiddleOutStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/MiddleOutStrategy;

.field private synthetic onMessageChannelReady:Lo/defaultSessionData;

.field private synthetic onNavigationEvent:Lo/AppRequestData;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/MiddleOutStrategy;Lo/defaultSessionData;Lo/AppRequestData;I)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/MiddleOutStrategy$2;->extraCallback:Lo/MiddleOutStrategy;

    iput-object p2, p0, Lo/MiddleOutStrategy$2;->onMessageChannelReady:Lo/defaultSessionData;

    iput-object p3, p0, Lo/MiddleOutStrategy$2;->onNavigationEvent:Lo/AppRequestData;

    iput p4, p0, Lo/MiddleOutStrategy$2;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 182
    iget-object p1, p0, Lo/MiddleOutStrategy$2;->onMessageChannelReady:Lo/defaultSessionData;

    .line 2062
    iget-object p1, p1, Lo/defaultSessionData;->extraCallback:Ljava/lang/String;

    const-string v0, "MixpanelAPI.TakeoverInAppActivity"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 193
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    iget-object v2, p0, Lo/MiddleOutStrategy$2;->extraCallback:Lo/MiddleOutStrategy;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "User doesn\'t have an activity for notification URI"

    .line 196
    invoke-static {v0, v2}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v1, "url"

    .line 201
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-object v1, v2

    :catch_2
    const-string p1, "Can\'t put url into json properties"

    .line 203
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    const-string v1, "Can\'t parse notification URI, will not take any action"

    .line 188
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 207
    :cond_0
    :goto_1
    iget-object p1, p0, Lo/MiddleOutStrategy$2;->onNavigationEvent:Lo/AppRequestData;

    check-cast p1, Lo/requestWasSuccessful;

    .line 2077
    iget-object p1, p1, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v2, 0x2

    const-string v3, "primary"

    if-ne p1, v2, :cond_1

    .line 209
    iget p1, p0, Lo/MiddleOutStrategy$2;->onPostMessage:I

    if-nez p1, :cond_1

    const-string p1, "secondary"

    move-object v3, p1

    :cond_1
    if-nez v1, :cond_2

    .line 213
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    move-object v1, p1

    :cond_2
    const-string p1, "button"

    .line 215
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    const-string p1, "Can\'t put button type into json properties"

    .line 217
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_2
    iget-object p1, p0, Lo/MiddleOutStrategy$2;->extraCallback:Lo/MiddleOutStrategy;

    invoke-static {p1}, Lo/MiddleOutStrategy;->onNavigationEvent(Lo/MiddleOutStrategy;)Lo/Settings;

    move-result-object p1

    .line 2206
    iget-object p1, p1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 219
    iget-object v0, p0, Lo/MiddleOutStrategy$2;->onNavigationEvent:Lo/AppRequestData;

    const-string v2, "$campaign_open"

    invoke-interface {p1, v2, v0, v1}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Lo/AppRequestData;Lorg/json/JSONObject;)V

    .line 220
    iget-object p1, p0, Lo/MiddleOutStrategy$2;->extraCallback:Lo/MiddleOutStrategy;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 221
    iget-object p1, p0, Lo/MiddleOutStrategy$2;->extraCallback:Lo/MiddleOutStrategy;

    invoke-static {p1}, Lo/MiddleOutStrategy;->ICustomTabsCallback(Lo/MiddleOutStrategy;)I

    move-result p1

    invoke-static {p1}, Lo/SettingsSpiCall;->ICustomTabsCallback(I)V

    return-void
.end method
