.class public final enum Lo/onVoiceClicked;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onVoiceClicked;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/UploadStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "logStatus",
        "",
        "context",
        "",
        "SUCCESS",
        "NETWORK_ERROR",
        "INVALID_TOKEN_ERROR",
        "HTTP_REDIRECTION",
        "HTTP_CLIENT_ERROR",
        "HTTP_SERVER_ERROR",
        "UNKNOWN_ERROR",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/onVoiceClicked;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/onVoiceClicked;

.field public static final enum asInterface:Lo/onVoiceClicked;

.field public static final enum extraCallback:Lo/onVoiceClicked;

.field public static final enum onMessageChannelReady:Lo/onVoiceClicked;

.field public static final enum onNavigationEvent:Lo/onVoiceClicked;

.field public static final enum onPostMessage:Lo/onVoiceClicked;

.field public static final enum onTransact:Lo/onVoiceClicked;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lo/onVoiceClicked;

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x0

    const-string v3, "SUCCESS"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->onNavigationEvent:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x1

    const-string v3, "NETWORK_ERROR"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->onPostMessage:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x2

    const-string v3, "INVALID_TOKEN_ERROR"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->ICustomTabsCallback:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x3

    const-string v3, "HTTP_REDIRECTION"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->extraCallback:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x4

    const-string v3, "HTTP_CLIENT_ERROR"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->onMessageChannelReady:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x5

    const-string v3, "HTTP_SERVER_ERROR"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->asInterface:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    new-instance v1, Lo/onVoiceClicked;

    const/4 v2, 0x6

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v1, v3, v2}, Lo/onVoiceClicked;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/onVoiceClicked;->onTransact:Lo/onVoiceClicked;

    aput-object v1, v0, v2

    sput-object v0, Lo/onVoiceClicked;->ICustomTabsCallback$Stub:[Lo/onVoiceClicked;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onVoiceClicked;
    .locals 1

    const-class v0, Lo/onVoiceClicked;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onVoiceClicked;

    return-object p0
.end method

.method public static values()[Lo/onVoiceClicked;
    .locals 1

    sget-object v0, Lo/onVoiceClicked;->ICustomTabsCallback$Stub:[Lo/onVoiceClicked;

    invoke-virtual {v0}, [Lo/onVoiceClicked;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onVoiceClicked;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ") because of a network error; we will retry later."

    const/4 v2, 0x6

    const-string v3, "Unable to send batch ("

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 47
    :pswitch_0
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Batch sent successfully ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Lo/onQueryTextChange;->onMessageChannelReady(Lo/onQueryTextChange;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :pswitch_1
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because of an unknown error; we will retry later."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v0, p1, v4, v4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    return-void

    .line 39
    :pswitch_2
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because of a server processing error; we will retry later."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v0, p1, v4, v4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    return-void

    .line 35
    :pswitch_3
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because of a processing error (possibly because of invalid data); the batch was dropped."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {v0, p1, v4, v4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    return-void

    .line 31
    :pswitch_4
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lo/onQueryTextChange;->extraCallback(Lo/onQueryTextChange;Ljava/lang/String;)V

    return-void

    .line 27
    :pswitch_5
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because your token is invalid. Make sure that the provided token still exists."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v0, p1, v4, v4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    return-void

    .line 23
    :pswitch_6
    invoke-static {}, Lo/createIntentFromSuggestion;->onMessageChannelReady()Lo/onQueryTextChange;

    move-result-object v0

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v0, p1, v4, v4, v2}, Lo/onQueryTextChange;->ICustomTabsCallback(Lo/onQueryTextChange;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
