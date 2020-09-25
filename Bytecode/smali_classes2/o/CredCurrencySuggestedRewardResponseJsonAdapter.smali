.class public final Lo/CredCurrencySuggestedRewardResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;",
        ":",
        "Lo/setTimer;",
        ":",
        "Lo/FileUploadConfig;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/CredCurrencySuggestedRewardResponse;


# direct methods
.method private constructor <init>(Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;Lo/CredCurrencySuggestedRewardResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lo/CredCurrencySuggestedRewardResponse;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/CredCurrencySuggestedRewardResponseJsonAdapter;->onPostMessage:Lo/CredCurrencySuggestedRewardResponse;

    iput-object p1, p0, Lo/CredCurrencySuggestedRewardResponseJsonAdapter;->ICustomTabsCallback:Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;

    return-void
.end method

.method public static onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/CredCurrencySuggestedRewardResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ")",
            "Lo/CredCurrencySuggestedRewardResponseJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/CredCurrencySuggestedRewardResponseJsonAdapter;

    new-instance v1, Lo/Entry;

    invoke-direct {v1, p0}, Lo/Entry;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-direct {v0, p0, v1}, Lo/CredCurrencySuggestedRewardResponseJsonAdapter;-><init>(Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;Lo/CredCurrencySuggestedRewardResponse;)V

    return-object v0
.end method
