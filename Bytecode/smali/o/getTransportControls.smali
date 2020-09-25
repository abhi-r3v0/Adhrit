.class public final Lo/getTransportControls;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTextSize;


# instance fields
.field private ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field private extraCallback:Ljava/lang/Integer;

.field private onMessageChannelReady:Lo/needsDividerBefore;

.field private onNavigationEvent:Lo/setTextSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/needsDividerBefore;Lo/MediaSessionCompat$1$onMessageChannelReady;Ljava/lang/Integer;Lo/setTextSize;)V
    .locals 0

    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    iput-object p1, p0, Lo/getTransportControls;->onMessageChannelReady:Lo/needsDividerBefore;

    .line 2023
    iput-object p2, p0, Lo/getTransportControls;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    const/4 p1, 0x0

    .line 2024
    iput-object p1, p0, Lo/getTransportControls;->extraCallback:Ljava/lang/Integer;

    .line 2025
    iput-object p4, p0, Lo/getTransportControls;->onNavigationEvent:Lo/setTextSize;

    return-void
.end method

.method public static extraCallback(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_9

    if-nez p1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 73
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_4

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_7

    .line 1338
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1339
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 1343
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v1, :cond_8

    return-void

    .line 80
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setAutoSizeTextTypeWithDefaults;
    .locals 5

    .line 2030
    iget-object v0, p0, Lo/getTransportControls;->onNavigationEvent:Lo/setTextSize;

    invoke-interface {v0}, Lo/setTextSize;->ICustomTabsCallback()Lo/setAutoSizeTextTypeWithDefaults;

    move-result-object v0

    .line 2031
    new-instance v1, Lo/onCreateInputConnection;

    iget-object v2, p0, Lo/getTransportControls;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    new-instance v3, Lo/setSupportBackgroundTintMode;

    iget-object v4, p0, Lo/getTransportControls;->onMessageChannelReady:Lo/needsDividerBefore;

    invoke-direct {v3, v4, v0}, Lo/setSupportBackgroundTintMode;-><init>(Lo/needsDividerBefore;Lo/setAutoSizeTextTypeWithDefaults;)V

    invoke-direct {v1, v2, v3}, Lo/onCreateInputConnection;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/setAutoSizeTextTypeWithDefaults;)V

    .line 2032
    iget-object v0, p0, Lo/getTransportControls;->extraCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2033
    new-instance v2, Lo/AppCompatButton;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lo/AppCompatButton;-><init>(ILo/setAutoSizeTextTypeWithDefaults;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method public final onMessageChannelReady()Lo/setAutoSizeTextTypeWithDefaults;
    .locals 3

    .line 2040
    iget-object v0, p0, Lo/getTransportControls;->onNavigationEvent:Lo/setTextSize;

    invoke-interface {v0}, Lo/setTextSize;->onMessageChannelReady()Lo/setAutoSizeTextTypeWithDefaults;

    move-result-object v0

    .line 2041
    new-instance v1, Lo/setCustomSelectionActionModeCallback;

    iget-object v2, p0, Lo/getTransportControls;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-direct {v1, v2, v0}, Lo/setCustomSelectionActionModeCallback;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/setAutoSizeTextTypeWithDefaults;)V

    .line 2042
    iget-object v0, p0, Lo/getTransportControls;->extraCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2043
    new-instance v2, Lo/AppCompatButton;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lo/AppCompatButton;-><init>(ILo/setAutoSizeTextTypeWithDefaults;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method
