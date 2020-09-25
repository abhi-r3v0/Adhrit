.class public final Lo/requestSimpleAnimationsInNextLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/a$4;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0008H\u0000\u001a\u0014\u0010\t\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001aV\u0010\u000c\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005H\u0000\u001a\u000c\u0010\u0015\u001a\u00020\u0007*\u00020\u0008H\u0000\u001a\u001c\u0010\u0016\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "getDescriptionText",
        "Landroid/text/SpannableString;",
        "response",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
        "stringResource",
        "",
        "setupSheet",
        "",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsFragment;",
        "showConsentSheet",
        "description",
        "",
        "showErrorSheet",
        "title",
        "desc",
        "positiveCta",
        "negativeCta",
        "positiveCtaListener",
        "Landroid/view/View$OnClickListener;",
        "negativeCtaListener",
        "imageResource",
        "showLoadingState",
        "showSimSelectionSheet",
        "sim1",
        "Lcom/dreamplug/fabrik/ui/sms/SimData;",
        "sim2",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/requestSimpleAnimationsInNextLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9000
    new-instance v0, Lo/requestSimpleAnimationsInNextLayout;

    invoke-direct {v0}, Lo/requestSimpleAnimationsInNextLayout;-><init>()V

    sput-object v0, Lo/requestSimpleAnimationsInNextLayout;->onPostMessage:Lo/requestSimpleAnimationsInNextLayout;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extraCallback(Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;I)Landroid/text/SpannableString;
    .locals 12

    const-string/jumbo v0, "response"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    .line 1011
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "message_placeholder"

    .line 1075
    invoke-static {p1, v3, v1, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2013
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v3, "sender_placeholder"

    .line 2075
    invoke-static {p1, v3, v1, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 147
    check-cast p1, Ljava/lang/CharSequence;

    .line 145
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    .line 3011
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x6

    .line 149
    invoke-static {p1, v1, v2, v2, v3}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    const-string v4, "ResourcesCompat.getFont(\u2026R.font.gilroy_semibold)!!"

    const v5, 0x7f090005

    const v6, 0x7f060096

    const/4 v7, -0x1

    const-string v8, "context"

    const/16 v9, 0x11

    if-eq v1, v7, :cond_3

    .line 151
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    sget-object v11, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 3122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 151
    :cond_0
    check-cast v11, Landroid/content/Context;

    invoke-static {v11, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 4011
    iget-object v11, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    .line 151
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v0, v10, v1, v11, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    new-instance v10, Lo/prepareForNestedPrefetch;

    sget-object v11, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 4122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 152
    :cond_1
    check-cast v11, Landroid/content/Context;

    invoke-static {v11, v5}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v11

    if-nez v11, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {v11, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 5011
    iget-object v11, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual {v0, v10, v1, v11, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5013
    :cond_3
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 154
    invoke-static {p1, v1, v2, v2, v3}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-eq p1, v7, :cond_7

    .line 156
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 5122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 156
    :cond_4
    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v6}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6013
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 157
    new-instance v1, Lo/prepareForNestedPrefetch;

    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 6122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 157
    :cond_5
    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v5}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 7013
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v1, p1, p0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 10000
    check-cast p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;

    check-cast p2, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    .line 10044
    iget-object v0, p2, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onPostMessage:Ljava/net/URL;

    if-eqz v0, :cond_0

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    .line 10045
    invoke-static {v1, v2, v0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10046
    iget-object p2, p2, Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;->onPostMessage:Ljava/net/URL;

    .line 11001
    new-instance v0, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;

    iget-object v1, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->onPostMessage:Lo/CreateOneLinkHttpTask;

    iget-object p1, p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;-><init>(Ljava/net/URL;Lo/CreateOneLinkHttpTask;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
