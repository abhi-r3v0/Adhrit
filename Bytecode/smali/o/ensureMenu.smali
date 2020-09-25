.class public final Lo/ensureMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0007J\u0006\u0010\u0019\u001a\u00020\u0016J0\u0010\u001a\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/login/DisclaimerTextPresenter;",
        "",
        "view",
        "Landroid/widget/TextView;",
        "(Landroid/widget/TextView;)V",
        "animation",
        "Landroid/view/animation/Animation;",
        "getAnimation",
        "()Landroid/view/animation/Animation;",
        "setAnimation",
        "(Landroid/view/animation/Animation;)V",
        "checked",
        "",
        "getChecked",
        "()Z",
        "setChecked",
        "(Z)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "destroy",
        "",
        "present",
        "shakeUi",
        "startShakeAnimation",
        "updateUi",
        "showCheckBox",
        "withError",
        "message",
        "",
        "alignment",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/view/animation/Animation;

.field extraCallback:Landroid/widget/TextView;

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 6037
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f01004c

    .line 34
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lo/ensureMenu;->ICustomTabsCallback:Landroid/view/animation/Animation;

    return-void
.end method

.method public static synthetic onPostMessage(Lo/ensureMenu;ZZLjava/lang/CharSequence;II)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 40
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ZZLjava/lang/CharSequence;I)V
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 1037
    iget-object p1, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 45
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    const p2, 0x7f08030a

    goto :goto_1

    .line 47
    :cond_2
    iget-boolean p2, p0, Lo/ensureMenu;->onPostMessage:Z

    if-eqz p2, :cond_3

    const p2, 0x7f080308

    goto :goto_1

    :cond_3
    const p2, 0x7f080309

    .line 45
    :goto_1
    invoke-static {p1, p2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v2, v2, p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    const-string p2, "checked box"

    .line 53
    iget-object v3, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 171
    new-instance v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "span"

    if-eqz p1, :cond_5

    const-string v6, "drawable"

    .line 55
    invoke-static {p1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "text"

    invoke-static {p2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    new-instance v6, Landroid/text/SpannableString;

    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1140
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, p1, p4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v6, v7, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    check-cast v6, Ljava/lang/CharSequence;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2108
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v7, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v6, v7}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 55
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3059
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n\n"

    .line 58
    invoke-virtual {v4, p1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    .line 61
    invoke-static {p3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4059
    iget-object p1, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 63
    :cond_6
    new-instance p1, Landroid/text/SpannableString;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f13042b

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {p1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5055
    iget-object v5, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5156
    :goto_2
    iget-object p1, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    const-string p2, ""

    .line 67
    :cond_8
    :goto_3
    new-instance p1, Landroid/text/SpannableString;

    iget-object v3, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_9
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "RBI approved credit bureaus"

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x6

    if-eqz v4, :cond_a

    .line 70
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 71
    new-instance v7, Lo/ensureMenu$ICustomTabsCallback;

    invoke-direct {v7, p0}, Lo/ensureMenu$ICustomTabsCallback;-><init>(Lo/ensureMenu;)V

    .line 88
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1b

    invoke-virtual {p1, v7, v8, v9, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 89
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-virtual {p1, v4, v7, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    const-string/jumbo v3, "terms of use"

    .line 93
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 94
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 95
    new-instance v7, Lo/ensureMenu$extraCallback;

    invoke-direct {v7, p0}, Lo/ensureMenu$extraCallback;-><init>(Lo/ensureMenu;)V

    .line 110
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-virtual {p1, v7, v8, v9, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v4, v7, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    const-string v3, "privacy policy"

    .line 114
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 115
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 116
    new-instance v7, Lo/ensureMenu$onPostMessage;

    invoke-direct {v7, p0}, Lo/ensureMenu$onPostMessage;-><init>(Lo/ensureMenu;)V

    .line 131
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v9

    add-int/lit8 v9, v9, 0xe

    invoke-virtual {p1, v7, v8, v9, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-static {v0, v3, v2, v2, v6}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-virtual {p1, v4, v7, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    :cond_c
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_d

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_e

    .line 136
    iget-object p2, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p2, :cond_e

    check-cast p2, Landroid/view/View;

    new-instance v1, Lo/ensureMenu$onMessageChannelReady;

    invoke-direct {v1, p0, p3, p4, p1}, Lo/ensureMenu$onMessageChannelReady;-><init>(Lo/ensureMenu;Ljava/lang/CharSequence;ILandroid/text/SpannableString;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 146
    :cond_e
    iget-object p1, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 147
    :cond_f
    iget-object p1, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_10
    iget-object p1, p0, Lo/ensureMenu;->extraCallback:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_11
    return-void
.end method
