.class final Lo/logDataCollectionState$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logDataCollectionState$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->sendAuthHelper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;

.field final synthetic val$restoreStateAfterComplete:Z


# direct methods
.method constructor <init>(Lo/logDataCollectionState;Z)V
    .locals 0

    .line 862
    iput-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    iput-boolean p2, p0, Lo/logDataCollectionState$5;->val$restoreStateAfterComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/logDataCollectionState;->access$502(Lo/logDataCollectionState;Lo/logDataCollectionState$ICustomTabsCallback;)Lo/logDataCollectionState$ICustomTabsCallback;

    const-string v0, "s"

    .line 867
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 869
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1, v3}, Lo/logDataCollectionState;->access$1302(Lo/logDataCollectionState;I)I

    .line 870
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1400(Lo/logDataCollectionState;)Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    move-result-object p1

    invoke-interface {p1, v2}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onAuthStatus(Z)V

    .line 871
    iget-boolean p1, p0, Lo/logDataCollectionState$5;->val$restoreStateAfterComplete:Z

    if-eqz p1, :cond_1

    .line 872
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1500(Lo/logDataCollectionState;)V

    return-void

    .line 875
    :cond_0
    iget-object v1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lo/logDataCollectionState;->access$1602(Lo/logDataCollectionState;Ljava/lang/String;)Ljava/lang/String;

    .line 876
    iget-object v1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {v1, v2}, Lo/logDataCollectionState;->access$1702(Lo/logDataCollectionState;Z)Z

    .line 877
    iget-object v1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {v1}, Lo/logDataCollectionState;->access$1400(Lo/logDataCollectionState;)Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;

    move-result-object v1

    invoke-interface {v1, v3}, Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;->onAuthStatus(Z)V

    const-string v1, "d"

    .line 878
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {v1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Authentication failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1800(Lo/logDataCollectionState;)Lo/waitForAutomaticDataCollectionEnabled;

    move-result-object p1

    invoke-virtual {p1}, Lo/waitForAutomaticDataCollectionEnabled;->close()V

    const-string p1, "invalid_token"

    .line 882
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 886
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1308(Lo/logDataCollectionState;)I

    .line 887
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1300(Lo/logDataCollectionState;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 889
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$1900(Lo/logDataCollectionState;)Lo/DeliveryMechanism;

    move-result-object p1

    invoke-virtual {p1}, Lo/DeliveryMechanism;->setMaxDelay()V

    .line 890
    iget-object p1, p0, Lo/logDataCollectionState$5;->this$0:Lo/logDataCollectionState;

    invoke-static {p1}, Lo/logDataCollectionState;->access$400(Lo/logDataCollectionState;)Lo/FileLogStore;

    move-result-object p1

    const-string v0, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {p1, v0}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
