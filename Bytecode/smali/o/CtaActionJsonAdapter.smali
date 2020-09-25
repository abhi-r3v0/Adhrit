.class public final Lo/CtaActionJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CtaActionJsonAdapter$onMessageChannelReady;,
        Lo/CtaActionJsonAdapter$onPostMessage;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;

.field public static final onPostMessage:Ljava/util/regex/Pattern;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/CtaActionJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/CtaActionJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/CtaActionJsonAdapter;->ICustomTabsCallback:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 6

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 316
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid alignment value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 311
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 308
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 259
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    .line 260
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 262
    invoke-virtual {p1, v0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    :goto_0
    const-string v0, "%"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p0}, Lo/CtaAction;->ICustomTabsCallback(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    move-result-object p0

    invoke-virtual {p0, v1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    return-void

    .line 267
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    :cond_2
    int-to-float p0, p0

    .line 273
    invoke-virtual {p1, p0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Ljava/util/regex/Matcher;Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lo/DreamAppGlideModule;",
            "Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/CtaAction;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady(J)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    move-result-object v2

    const/4 v3, 0x2

    .line 232
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/CtaAction;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->extraCallback(J)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    .line 238
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lo/CtaActionJsonAdapter;->extraCallback(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V

    .line 241
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    :goto_0
    invoke-virtual {p2}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    .line 245
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p5}, Lo/CtaActionJsonAdapter;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/util/List;)V

    return v1

    .line 234
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skipping cue with bad header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static extraCallback(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xced

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd88

    if-eq v0, v1, :cond_2

    const v1, 0x179c4

    if-eq v0, v1, :cond_1

    const v1, 0x337f11

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 p0, 0x26

    .line 345
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_6
    const/16 p0, 0x20

    .line 342
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_7
    const/16 p0, 0x3e

    .line 339
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_8
    const/16 p0, 0x3c

    .line 336
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method static extraCallback(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V
    .locals 5

    const-string v0, "WebvttCueParser"

    .line 128
    sget-object v1, Lo/CtaActionJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 129
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 131
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "line"

    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-static {v2, p1}, Lo/CtaActionJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V

    goto :goto_0

    :cond_0
    const-string v3, "align"

    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {v2}, Lo/CtaActionJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->extraCallback(Landroid/text/Layout$Alignment;)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    goto :goto_0

    :cond_1
    const-string v3, "position"

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-static {v2, p1}, Lo/CtaActionJsonAdapter;->onNavigationEvent(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "size"

    .line 139
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {v2}, Lo/CtaAction;->ICustomTabsCallback(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    goto :goto_0

    .line 142
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown cue setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping bad cue setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static extraCallback(Ljava/util/List;Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;",
            "Ljava/lang/String;",
            "Lo/CtaActionJsonAdapter$onMessageChannelReady;",
            "Ljava/util/List<",
            "Lo/CtaActionJsonAdapter$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CheckoutSessionResponse;

    .line 468
    iget-object v3, p2, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object v4, p2, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onPostMessage:[Ljava/lang/String;

    iget-object v5, p2, Lo/CtaActionJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lo/CheckoutSessionResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 470
    new-instance v4, Lo/CtaActionJsonAdapter$onPostMessage;

    invoke-direct {v4, v3, v2}, Lo/CtaActionJsonAdapter$onPostMessage;-><init>(ILo/CheckoutSessionResponse;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Z
    .locals 8

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x63

    if-eq v0, v1, :cond_4

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const v1, 0x3291ee

    if-eq v0, v1, :cond_2

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    const/16 v1, 0x76

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_7

    if-eq p0, v7, :cond_7

    if-eq p0, v6, :cond_7

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    return v2

    :cond_7
    return v7
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)I
    .locals 5

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 299
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid anchor value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method private static onMessageChannelReady(Landroid/text/SpannableStringBuilder;Lo/CheckoutSessionResponse;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onNavigationEvent()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_1

    .line 405
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onNavigationEvent()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 408
    :cond_1
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 411
    :cond_2
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    :cond_3
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onTransact()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 418
    :cond_4
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->asBinder()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 422
    :cond_5
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 423
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 426
    :cond_6
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onRelationshipValidationResult()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 427
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->onRelationshipValidationResult()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 430
    :cond_7
    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->getInterfaceDescriptor()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 440
    :cond_8
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void

    .line 436
    :cond_9
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy()F

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 432
    :cond_a
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/CtaActionJsonAdapter$onMessageChannelReady;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;",
            "Ljava/util/List<",
            "Lo/CtaActionJsonAdapter$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 369
    iget v0, p1, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onMessageChannelReady:I

    .line 370
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 371
    iget-object v2, p1, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    const/16 v7, 0x69

    if-eq v3, v7, :cond_5

    const v7, 0x3291ee

    if-eq v3, v7, :cond_4

    const/16 v7, 0x62

    if-eq v3, v7, :cond_3

    const/16 v7, 0x63

    if-eq v3, v7, :cond_2

    const/16 v7, 0x75

    if-eq v3, v7, :cond_1

    const/16 v7, 0x76

    if-eq v3, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    return-void

    .line 381
    :pswitch_0
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 377
    :pswitch_1
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 373
    :pswitch_2
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 391
    :goto_2
    :pswitch_3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 392
    invoke-static {p3, p0, p1, p4}, Lo/CtaActionJsonAdapter;->extraCallback(Ljava/util/List;Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Ljava/util/List;)V

    .line 393
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    :goto_3
    if-ge v4, p0, :cond_8

    .line 395
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CtaActionJsonAdapter$onPostMessage;

    iget-object p1, p1, Lo/CtaActionJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/CheckoutSessionResponse;

    invoke-static {p2, p1, v0, v1}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Landroid/text/SpannableStringBuilder;Lo/CheckoutSessionResponse;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static onNavigationEvent(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0x3e

    .line 329
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "[ \\.]"

    .line 460
    invoke-static {p0, v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 161
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 165
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_0

    .line 213
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_2

    :cond_1
    :goto_1
    move v4, v5

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 174
    :goto_2
    invoke-static {p1, v5}, Lo/CtaActionJsonAdapter;->onNavigationEvent(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v9, v5, -0x2

    .line 175
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v6, :cond_5

    const/4 v8, 0x2

    :cond_5
    add-int/2addr v4, v8

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v5, -0x1

    .line 176
    :goto_4
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v4}, Lo/CtaActionJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 179
    invoke-static {v8}, Lo/CtaActionJsonAdapter;->extraCallback(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v6, :cond_8

    .line 185
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CtaActionJsonAdapter$onMessageChannelReady;

    .line 189
    invoke-static {p0, v4, v0, p3, v2}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 190
    iget-object v4, v4, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_8
    if-nez v7, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v4, v6}, Lo/CtaActionJsonAdapter$onMessageChannelReady;->extraCallback(Ljava/lang/String;I)Lo/CtaActionJsonAdapter$onMessageChannelReady;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const/16 v6, 0x3b

    add-int/lit8 v4, v4, 0x1

    .line 196
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x20

    .line 197
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v6, v8, :cond_a

    move v6, v7

    goto :goto_5

    :cond_a
    if-ne v7, v8, :cond_b

    goto :goto_5

    .line 200
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_5
    if-eq v6, v8, :cond_d

    .line 202
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lo/CtaActionJsonAdapter;->extraCallback(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    if-ne v6, v7, :cond_c

    const-string v4, " "

    .line 204
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c
    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_0

    .line 208
    :cond_d
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 219
    :cond_e
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 220
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CtaActionJsonAdapter$onMessageChannelReady;

    invoke-static {p0, p1, v0, p3, v2}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 222
    :cond_f
    invoke-static {}, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onNavigationEvent()Lo/CtaActionJsonAdapter$onMessageChannelReady;

    move-result-object p1

    invoke-static {p0, p1, v0, p3, v2}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Lo/CtaActionJsonAdapter$onMessageChannelReady;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 224
    invoke-virtual {p2, v0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onPostMessage(Landroid/text/SpannableStringBuilder;)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/String;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 281
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/CtaActionJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 284
    invoke-virtual {p1, v0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(I)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    .line 286
    :goto_0
    invoke-static {p0}, Lo/CtaAction;->ICustomTabsCallback(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;->onNavigationEvent(F)Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;",
            "Ljava/util/List<",
            "Lo/CheckoutSessionResponse;",
            ">;)Z"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    sget-object v2, Lo/CtaActionJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 103
    iget-object v7, p0, Lo/CtaActionJsonAdapter;->ICustomTabsCallback:Ljava/lang/StringBuilder;

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lo/CtaActionJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/regex/Matcher;Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 110
    :cond_2
    sget-object v3, Lo/CtaActionJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lo/CtaActionJsonAdapter;->ICustomTabsCallback:Ljava/lang/StringBuilder;

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lo/CtaActionJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/regex/Matcher;Lo/DreamAppGlideModule;Lo/CheckoutInstrumentJsonAdapter$onMessageChannelReady;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
