.class abstract Lo/setStartIconCheckable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:Ljava/lang/Boolean;

.field onMessageChannelReady:Ljava/lang/Boolean;

.field onNavigationEvent:Ljava/lang/Long;

.field onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setStartIconCheckable;->onPostMessage:Ljava/lang/String;

    .line 3
    iput p2, p0, Lo/setStartIconCheckable;->ICustomTabsCallback:I

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Lo/cB$asBinder$onPostMessage;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/HideBottomViewOnScrollBehavior;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/cB$asBinder$onPostMessage;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/HideBottomViewOnScrollBehavior;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 40
    :cond_0
    sget-object v1, Lo/cB$asBinder$onPostMessage;->asInterface:Lo/cB$asBinder$onPostMessage;

    if-ne p1, v1, :cond_2

    if-eqz p4, :cond_1

    .line 41
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p3, :cond_3

    return-object v0

    :cond_3
    if-nez p2, :cond_5

    .line 45
    sget-object v1, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 47
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 48
    :cond_5
    :goto_0
    sget-object v1, Lo/setHintAnimationEnabled;->extraCallback:[I

    invoke-virtual {p1}, Lo/cB$asBinder$onPostMessage;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 62
    :pswitch_0
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 60
    :pswitch_2
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_3
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 58
    :pswitch_4
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-eqz p2, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    const/16 p1, 0x42

    .line 50
    :goto_1
    :try_start_0
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    if-eqz p6, :cond_7

    .line 55
    invoke-virtual {p6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p0

    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    .line 56
    invoke-virtual {p0, p1, p5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ICustomTabsCallback(Ljava/math/BigDecimal;Lo/cB$ICustomTabsCallback;D)Ljava/lang/Boolean;
    .locals 9

    .line 75
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 77
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_0
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/cB$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

    if-ne v0, v2, :cond_2

    .line 80
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    .line 82
    :cond_2
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onMessageChannelReady()Lo/cB$ICustomTabsCallback$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/cB$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

    if-ne v2, v3, :cond_6

    .line 89
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onTransact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/setErrorTextColor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->asInterface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/setErrorTextColor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 92
    :cond_4
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->onTransact()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->asInterface()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    move-object v2, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    .line 97
    :cond_6
    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/setErrorTextColor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    return-object v1

    .line 99
    :cond_7
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lo/cB$ICustomTabsCallback;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v3, p1

    .line 105
    :goto_1
    sget-object v4, Lo/cB$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

    if-ne v0, v4, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v2, :cond_14

    .line 109
    :cond_9
    sget-object v4, Lo/setHintAnimationEnabled;->onMessageChannelReady:[I

    invoke-virtual {v0}, Lo/cB$ICustomTabsCallback$onPostMessage;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_10

    const/4 v8, 0x3

    if-eq v0, v8, :cond_c

    const/4 p2, 0x4

    if-eq v0, p2, :cond_a

    goto :goto_2

    .line 120
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v4, :cond_b

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e

    .line 113
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 114
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 116
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_d

    const/4 v5, 0x1

    .line 118
    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 119
    :cond_e
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 111
    :cond_10
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_11

    const/4 v5, 0x1

    :cond_11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 110
    :cond_12
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_13

    const/4 v5, 0x1

    :cond_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_14
    :goto_2
    return-object v1
.end method

.method static extraCallback(Ljava/lang/String;Lo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;
    .locals 4

    .line 70
    invoke-static {p0}, Lo/setErrorTextColor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lo/setStartIconCheckable;->ICustomTabsCallback(Ljava/math/BigDecimal;Lo/cB$ICustomTabsCallback;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method static extraCallback(Ljava/lang/String;Lo/cB$asBinder;Lo/HideBottomViewOnScrollBehavior;)Ljava/lang/Boolean;
    .locals 9

    .line 8
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lo/cB$asBinder;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lo/cB$asBinder;->onPostMessage()Lo/cB$asBinder$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/cB$asBinder$onPostMessage;->extraCallback:Lo/cB$asBinder$onPostMessage;

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    .line 13
    :cond_1
    invoke-virtual {p1}, Lo/cB$asBinder;->onPostMessage()Lo/cB$asBinder$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/cB$asBinder$onPostMessage;->asInterface:Lo/cB$asBinder$onPostMessage;

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {p1}, Lo/cB$asBinder;->asBinder()I

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lo/cB$asBinder;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lo/cB$asBinder;->onPostMessage()Lo/cB$asBinder$onPostMessage;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lo/cB$asBinder;->asInterface()Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    sget-object v1, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    if-eq v3, v1, :cond_5

    sget-object v1, Lo/cB$asBinder$onPostMessage;->asInterface:Lo/cB$asBinder$onPostMessage;

    if-ne v3, v1, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1}, Lo/cB$asBinder;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lo/cB$asBinder;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v5, v1

    .line 23
    invoke-virtual {p1}, Lo/cB$asBinder;->asBinder()I

    move-result v1

    if-nez v1, :cond_6

    move-object v6, v0

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {p1}, Lo/cB$asBinder;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object p1

    if-eqz v4, :cond_7

    :goto_2
    move-object v6, p1

    goto :goto_4

    .line 28
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 35
    :goto_4
    sget-object p1, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    if-ne v3, p1, :cond_9

    move-object v7, v5

    goto :goto_5

    :cond_9
    move-object v7, v0

    :goto_5
    move-object v2, p0

    move-object v8, p2

    .line 37
    invoke-static/range {v2 .. v8}, Lo/setStartIconCheckable;->ICustomTabsCallback(Ljava/lang/String;Lo/cB$asBinder$onPostMessage;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/HideBottomViewOnScrollBehavior;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_6
    return-object v0
.end method

.method static onMessageChannelReady(JLo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;
    .locals 1

    .line 64
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lo/setStartIconCheckable;->ICustomTabsCallback(Ljava/math/BigDecimal;Lo/cB$ICustomTabsCallback;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static onNavigationEvent(DLo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;
    .locals 1

    .line 67
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lo/setStartIconCheckable;->ICustomTabsCallback(Ljava/math/BigDecimal;Lo/cB$ICustomTabsCallback;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method abstract ICustomTabsCallback()Z
.end method

.method abstract extraCallback()I
.end method

.method abstract onNavigationEvent()Z
.end method
