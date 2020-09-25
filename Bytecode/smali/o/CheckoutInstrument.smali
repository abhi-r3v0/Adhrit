.class final Lo/CheckoutInstrument;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/CheckoutInstrument;->extraCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 297
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 298
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 301
    iget-object v3, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 305
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 310
    :cond_5
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static ICustomTabsCallback(Lo/DreamAppGlideModule;)V
    .locals 1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/CheckoutSessionResponse;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 154
    invoke-static {p0}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 155
    invoke-static {p0, p2}, Lo/CheckoutInstrument;->ICustomTabsCallback(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {p0, p2}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 162
    :cond_1
    invoke-static {p0}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 163
    invoke-static {p0, p2}, Lo/CheckoutInstrument;->extraCallback(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 167
    :cond_2
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 168
    invoke-static {p0, p2}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ";"

    .line 169
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "}"

    .line 171
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 174
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "color"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 181
    invoke-static {v2}, Lo/setOnSwipeListener;->extraCallback(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/CheckoutSessionResponse;->onMessageChannelReady(I)Lo/CheckoutSessionResponse;

    return-void

    :cond_5
    const-string p0, "background-color"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 183
    invoke-static {v2}, Lo/setOnSwipeListener;->extraCallback(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/CheckoutSessionResponse;->onNavigationEvent(I)Lo/CheckoutSessionResponse;

    return-void

    :cond_6
    const-string/jumbo p0, "text-decoration"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_7

    const-string/jumbo p0, "underline"

    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 186
    invoke-virtual {p1, p2}, Lo/CheckoutSessionResponse;->extraCallback(Z)Lo/CheckoutSessionResponse;

    return-void

    :cond_7
    const-string p0, "font-family"

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 189
    invoke-virtual {p1, v2}, Lo/CheckoutSessionResponse;->ICustomTabsCallback(Ljava/lang/String;)Lo/CheckoutSessionResponse;

    return-void

    :cond_8
    const-string p0, "font-weight"

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "bold"

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 192
    invoke-virtual {p1, p2}, Lo/CheckoutSessionResponse;->ICustomTabsCallback(Z)Lo/CheckoutSessionResponse;

    return-void

    :cond_9
    const-string p0, "font-style"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "italic"

    .line 195
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 196
    invoke-virtual {p1, p2}, Lo/CheckoutSessionResponse;->onNavigationEvent(Z)Lo/CheckoutSessionResponse;

    :cond_a
    :goto_1
    return-void
.end method

.method private static asBinder(Lo/DreamAppGlideModule;)Z
    .locals 6

    .line 276
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 277
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    .line 278
    iget-object v2, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 279
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 281
    aget-byte v0, v2, v0

    int-to-char v0, v0

    if-ne v0, v5, :cond_0

    .line 283
    aget-byte v0, v2, v3

    int-to-char v0, v0

    if-ne v0, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 259
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v2

    .line 260
    invoke-static {p0, p1}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v4, "}"

    .line 265
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;)Ljava/lang/String;
    .locals 5

    .line 141
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 145
    iget-object v3, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 148
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 212
    invoke-static {p0}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 213
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_0
    invoke-static {p0, p1}, Lo/CheckoutInstrument;->ICustomTabsCallback(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onNavigationEvent(Lo/CheckoutSessionResponse;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 324
    sget-object v4, Lo/CheckoutInstrument;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 326
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo/CheckoutSessionResponse;->onPostMessage(Ljava/lang/String;)V

    .line 328
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v0, "\\."

    .line 330
    invoke-static {p2, v0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 331
    aget-object v0, p2, v2

    const/16 v4, 0x23

    .line 332
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 334
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/CheckoutSessionResponse;->onMessageChannelReady(Ljava/lang/String;)V

    add-int/2addr v4, v3

    .line 335
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CheckoutSessionResponse;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {p1, v0}, Lo/CheckoutSessionResponse;->onMessageChannelReady(Ljava/lang/String;)V

    .line 339
    :goto_0
    array-length v0, p2

    if-le v0, v3, :cond_4

    .line 340
    array-length v0, p2

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/CheckoutSessionResponse;->onPostMessage([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;)Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    invoke-static {p0, v0}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    return v0
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;I)C
    .locals 0

    .line 249
    iget-object p0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 109
    invoke-static {p0}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 110
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 113
    :cond_0
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::cue"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 117
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 118
    invoke-static {p0, p1}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const-string/jumbo v3, "{"

    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const-string p0, ""

    return-object p0

    :cond_3
    const-string v0, "("

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-static {p0}, Lo/CheckoutInstrument;->onMessageChannelReady(Lo/DreamAppGlideModule;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 130
    :goto_0
    invoke-static {p0, p1}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method static onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 205
    :goto_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 206
    invoke-static {p0}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lo/CheckoutInstrument;->asBinder(Lo/DreamAppGlideModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/DreamAppGlideModule;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 69
    invoke-static {p1}, Lo/CheckoutInstrument;->ICustomTabsCallback(Lo/DreamAppGlideModule;)V

    .line 70
    iget-object v2, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v3, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 71
    iget-object p1, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v2, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lo/CheckoutInstrument;->onPostMessage(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 76
    iget-object v2, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v3, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    .line 79
    :cond_1
    new-instance v2, Lo/CheckoutSessionResponse;

    invoke-direct {v2}, Lo/CheckoutSessionResponse;-><init>()V

    .line 80
    invoke-direct {p0, v2, v0}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/CheckoutSessionResponse;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo v4, "}"

    if-nez v3, :cond_5

    .line 84
    iget-object v0, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 85
    iget-object v3, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v5, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lo/CheckoutInstrument;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    .line 88
    iget-object v5, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v5, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 89
    iget-object v0, p0, Lo/CheckoutInstrument;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object v5, p0, Lo/CheckoutInstrument;->onNavigationEvent:Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v5}, Lo/CheckoutInstrument;->ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/CheckoutSessionResponse;Ljava/lang/StringBuilder;)V

    :cond_4
    move-object v0, v3

    move v3, v4

    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object p1
.end method
