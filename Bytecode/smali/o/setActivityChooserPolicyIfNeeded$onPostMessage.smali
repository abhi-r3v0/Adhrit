.class public final Lo/setActivityChooserPolicyIfNeeded$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setActivityChooserPolicyIfNeeded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\rJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u001a2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0012J\"\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0012J\u0016\u0010\u001d\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0012J\u0016\u0010 \u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\u0006\u0010!\u001a\u00020\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0012H\u0002J\u000e\u0010&\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u000e\u0010\'\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u000e\u0010(\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u000e\u0010)\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u000e\u0010*\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u0016\u0010\u000b\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020\u0001J\u000e\u0010-\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rJ\u001f\u0010.\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\r2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0002\u0010/J\u000e\u00100\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/dreamplug/textformatter/Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "spanBuilder",
        "Landroid/text/SpannableStringBuilder;",
        "append",
        "",
        "span",
        "Landroid/text/Spannable;",
        "",
        "text",
        "",
        "background",
        "color",
        "",
        "bold",
        "build",
        "clickable",
        "listener",
        "Landroid/text/style/ClickableSpan;",
        "drawable",
        "Landroid/text/SpannableString;",
        "Landroid/graphics/drawable/Drawable;",
        "align",
        "drawableRes",
        "fontColor",
        "fontSize",
        "sizeInSp",
        "fontSizeRelative",
        "proportion",
        "",
        "getFontSpan",
        "Lcom/dreamplug/textformatter/CustomTypefaceSpan;",
        "font",
        "icon",
        "light",
        "medium",
        "regular",
        "semibold",
        "s",
        "o",
        "strike",
        "superScript",
        "(Ljava/lang/CharSequence;Ljava/lang/Float;)Ljava/lang/CharSequence;",
        "underline",
        "textformatter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Landroid/text/SpannableStringBuilder;

.field public final onNavigationEvent:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    .line 5048
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    const-string/jumbo v0, "s"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    instance-of v0, p0, Ljava/lang/String;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1064
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1063
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1066
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 1067
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0

    .line 1069
    :cond_1
    instance-of v0, p0, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableString;

    .line 1070
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0

    .line 1072
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unhandled type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const-string/jumbo v0, "span"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    sget v0, Lo/getRemainingScrollHorizontal$extraCallback;->cred_symbols:I

    .line 2101
    new-instance v1, Lo/prepareForNestedPrefetch;

    iget-object v2, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v2, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "ResourcesCompat.getFont(context, font)!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 2081
    invoke-static {p1, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const-string/jumbo v0, "span"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    sget v0, Lo/getRemainingScrollHorizontal$extraCallback;->gilroy_bold:I

    .line 1101
    new-instance v1, Lo/prepareForNestedPrefetch;

    iget-object v2, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v2, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "ResourcesCompat.getFont(context, font)!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 1077
    invoke-static {p1, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    new-instance v0, Landroid/text/SpannableString;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Landroid/text/Spannable;

    const-string/jumbo p1, "span"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    iget-object p1, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const-string/jumbo v0, "span"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3085
    sget v0, Lo/getRemainingScrollHorizontal$extraCallback;->gilroy_medium:I

    .line 3101
    new-instance v1, Lo/prepareForNestedPrefetch;

    iget-object v2, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v2, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "ResourcesCompat.getFont(context, font)!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 3085
    invoke-static {p1, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const-string/jumbo v0, "span"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4097
    sget v0, Lo/getRemainingScrollHorizontal$extraCallback;->gilroy_semibold:I

    .line 4101
    new-instance v1, Lo/prepareForNestedPrefetch;

    iget-object v2, p0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v2, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "ResourcesCompat.getFont(context, font)!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 4097
    invoke-static {p1, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
