.class final Lo/onSuggestionsKey$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSuggestionsKey;-><init>(Ljava/io/File;Lo/onSubmitQuery;JJIJJLo/dismissSuggestions;Ljava/lang/String;Lo/updateViewsVisibility;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/updateSubmitButton<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/datadog/android/core/internal/data/file/DeferredWriter;",
        "T",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onSuggestionsKey;


# direct methods
.method constructor <init>(Lo/onSuggestionsKey;)V
    .locals 0

    iput-object p1, p0, Lo/onSuggestionsKey$onPostMessage;->onMessageChannelReady:Lo/onSuggestionsKey;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1037
    new-instance v0, Lo/updateSubmitButton;

    .line 1038
    iget-object v1, p0, Lo/onSuggestionsKey$onPostMessage;->onMessageChannelReady:Lo/onSuggestionsKey;

    invoke-static {v1}, Lo/onSuggestionsKey;->onNavigationEvent(Lo/onSuggestionsKey;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    iget-object v2, p0, Lo/onSuggestionsKey$onPostMessage;->onMessageChannelReady:Lo/onSuggestionsKey;

    .line 1045
    iget-object v2, v2, Lo/onQueryRefine;->onNavigationEvent:Lo/isSubmitAreaEnabled;

    .line 1039
    check-cast v2, Lo/getPreferredWidth;

    .line 1040
    iget-object v3, p0, Lo/onSuggestionsKey$onPostMessage;->onMessageChannelReady:Lo/onSuggestionsKey;

    invoke-static {v3}, Lo/onSuggestionsKey;->extraCallback(Lo/onSuggestionsKey;)Lo/updateViewsVisibility;

    move-result-object v3

    .line 1037
    invoke-direct {v0, v1, v2, v3}, Lo/updateSubmitButton;-><init>(Ljava/lang/String;Lo/getPreferredWidth;Lo/updateViewsVisibility;)V

    return-object v0
.end method
