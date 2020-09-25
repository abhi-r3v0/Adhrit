.class public final Lo/Authentication;
.super Lo/SimDetailJsonAdapter;
.source ""


# static fields
.field private static final onMessageChannelReady:I

.field private static final onPostMessage:I


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private asInterface:I

.field private extraCallback:Z

.field private final onNavigationEvent:Lo/DreamAppGlideModule;

.field private onRelationshipValidationResult:F

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "styl"

    .line 46
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/Authentication;->onPostMessage:I

    const-string/jumbo v0, "tbox"

    .line 47
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/Authentication;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 82
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    const v0, 0x3f59999a    # 0.85f

    const-string/jumbo v1, "sans-serif"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_4

    .line 87
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v3, 0x18

    .line 88
    aget-byte v5, p1, v3

    iput v5, p0, Lo/Authentication;->ICustomTabsCallback:I

    const/16 v5, 0x1a

    .line 89
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iput v3, p0, Lo/Authentication;->asInterface:I

    .line 93
    array-length v3, p1

    const/16 v5, 0x2b

    sub-int/2addr v3, v5

    .line 94
    invoke-static {p1, v5, v3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([BII)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Serif"

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "serif"

    :cond_1
    iput-object v1, p0, Lo/Authentication;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/16 v1, 0x19

    .line 97
    aget-byte v1, p1, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lo/Authentication;->onTransact:I

    .line 98
    aget-byte v1, p1, v2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lo/Authentication;->extraCallback:Z

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    .line 100
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-float p1, p1

    .line 102
    iget v0, p0, Lo/Authentication;->onTransact:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lo/Authentication;->onRelationshipValidationResult:F

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 103
    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(FFF)F

    move-result p1

    iput p1, p0, Lo/Authentication;->onRelationshipValidationResult:F

    return-void

    .line 105
    :cond_3
    iput v0, p0, Lo/Authentication;->onRelationshipValidationResult:F

    return-void

    .line 108
    :cond_4
    iput v2, p0, Lo/Authentication;->ICustomTabsCallback:I

    const/4 p1, -0x1

    .line 109
    iput p1, p0, Lo/Authentication;->asInterface:I

    .line 110
    iput-object v1, p0, Lo/Authentication;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lo/Authentication;->extraCallback:Z

    .line 112
    iput v0, p0, Lo/Authentication;->onRelationshipValidationResult:F

    return-void
.end method

.method private ICustomTabsCallback(Lo/DreamAppGlideModule;Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/Authentication;->onPostMessage(Z)V

    .line 183
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    .line 184
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v8

    const/4 v2, 0x2

    .line 185
    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 186
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    .line 187
    invoke-virtual {p1, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 188
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    .line 189
    iget v4, p0, Lo/Authentication;->ICustomTabsCallback:I

    const/4 v7, 0x0

    move-object v2, p2

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lo/Authentication;->onPostMessage(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 190
    iget v4, p0, Lo/Authentication;->asInterface:I

    move v3, p1

    invoke-static/range {v2 .. v7}, Lo/Authentication;->extraCallback(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private static extraCallback(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 222
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static extraCallback(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 231
    new-instance p2, Landroid/text/style/TypefaceSpan;

    invoke-direct {p2, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/Authentication;->onPostMessage(Z)V

    .line 167
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 172
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->asBinder()C

    move-result v1

    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "UTF-16"

    .line 174
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/DreamAppGlideModule;->onPostMessage(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "UTF-8"

    .line 177
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/DreamAppGlideModule;->onPostMessage(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 201
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 203
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 206
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 210
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 213
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static onPostMessage(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onNavigationEvent([BIZ)Lo/Status;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 119
    iget-object p3, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p3, p1, p2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 120
    iget-object p1, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-static {p1}, Lo/Authentication;->onPostMessage(Lo/DreamAppGlideModule;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    sget-object p1, Lo/VpaAccounts;->extraCallback:Lo/VpaAccounts;

    return-object p1

    .line 125
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    iget v1, p0, Lo/Authentication;->ICustomTabsCallback:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/high16 v5, 0xff0000

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lo/Authentication;->onPostMessage(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 128
    iget v1, p0, Lo/Authentication;->asInterface:I

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lo/Authentication;->extraCallback(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 130
    iget-object v1, p0, Lo/Authentication;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-string/jumbo v2, "sans-serif"

    invoke-static/range {v0 .. v5}, Lo/Authentication;->extraCallback(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 132
    iget p1, p0, Lo/Authentication;->onRelationshipValidationResult:F

    move v3, p1

    .line 134
    :goto_0
    iget-object p1, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p1

    const/16 p3, 0x8

    if-lt p1, p3, :cond_5

    .line 135
    iget-object p1, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result p1

    .line 136
    iget-object p3, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p3}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p3

    .line 137
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 138
    sget v1, Lo/Authentication;->onPostMessage:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lo/Authentication;->onPostMessage(Z)V

    .line 140
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    :goto_2
    if-ge v5, v0, :cond_4

    .line 142
    iget-object v1, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-direct {p0, v1, p2}, Lo/Authentication;->ICustomTabsCallback(Lo/DreamAppGlideModule;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 144
    :cond_2
    sget v1, Lo/Authentication;->onMessageChannelReady:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lo/Authentication;->extraCallback:Z

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lo/Authentication;->onPostMessage(Z)V

    .line 146
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    int-to-float v0, v0

    .line 147
    iget v1, p0, Lo/Authentication;->onTransact:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    .line 148
    invoke-static {v0, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(FFF)F

    move-result v3

    .line 150
    :cond_4
    iget-object v0, p0, Lo/Authentication;->onNavigationEvent:Lo/DreamAppGlideModule;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    goto :goto_0

    .line 152
    :cond_5
    new-instance p1, Lo/VpaAccounts;

    new-instance p3, Lo/SimResponseJsonAdapter;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {p1, p3}, Lo/VpaAccounts;-><init>(Lo/SimResponseJsonAdapter;)V

    return-object p1
.end method
