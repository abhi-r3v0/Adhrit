.class public final Lo/didStructureChange;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\u000e\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0004J\u001a\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R#\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/textformatter/FabrikStringDecoder;",
        "",
        "()V",
        "PREFIX",
        "",
        "SUFFIX",
        "docBuilder",
        "Ljavax/xml/parsers/DocumentBuilder;",
        "kotlin.jvm.PlatformType",
        "getDocBuilder",
        "()Ljavax/xml/parsers/DocumentBuilder;",
        "docBuilder$delegate",
        "Lkotlin/Lazy;",
        "applyProperties",
        "",
        "text",
        "properties",
        "Lcom/dreamplug/textformatter/TagProperties;",
        "extractProperties",
        "element",
        "Lorg/w3c/dom/Element;",
        "isEncoded",
        "",
        "inputString",
        "parse",
        "parseXMLString",
        "parentProperties",
        "textformatter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/didStructureChange;

.field private static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/didStructureChange;

    invoke-direct {v0}, Lo/didStructureChange;-><init>()V

    sput-object v0, Lo/didStructureChange;->onNavigationEvent:Lo/didStructureChange;

    .line 27
    sget-object v0, Lo/didStructureChange$onPostMessage;->ICustomTabsCallback:Lo/didStructureChange$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 27
    sput-object v1, Lo/didStructureChange;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Lorg/w3c/dom/Element;Lo/getViewForPositionAndType;)Ljava/lang/CharSequence;
    .locals 23

    move-object/from16 v0, p1

    .line 60
    sget-object v1, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    invoke-static {}, Lo/isMeasuring;->extraCallback()Landroid/content/Context;

    move-result-object v1

    .line 143
    new-instance v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v2, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 3077
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon"

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x3da724b7

    if-eq v4, v5, :cond_3

    const v5, 0x313c79

    if-eq v4, v5, :cond_2

    const v5, 0x36452d

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "text"

    .line 3078
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lo/willRunSimpleAnimations$extraCallback;

    invoke-direct {v1, v0}, Lo/willRunSimpleAnimations$extraCallback;-><init>(Lo/getViewForPositionAndType;)V

    check-cast v1, Lo/willRunSimpleAnimations;

    goto :goto_1

    .line 3079
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lo/willRunSimpleAnimations$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/willRunSimpleAnimations$ICustomTabsCallback;-><init>(Lo/getViewForPositionAndType;)V

    check-cast v1, Lo/willRunSimpleAnimations;

    goto :goto_1

    :cond_3
    const-string v4, "number"

    .line 3080
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lo/willRunSimpleAnimations$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/willRunSimpleAnimations$onMessageChannelReady;-><init>(Lo/getViewForPositionAndType;)V

    check-cast v1, Lo/willRunSimpleAnimations;

    goto :goto_1

    .line 3081
    :cond_4
    :goto_0
    new-instance v1, Lo/willRunSimpleAnimations$onPostMessage;

    invoke-direct {v1, v0}, Lo/willRunSimpleAnimations$onPostMessage;-><init>(Lo/getViewForPositionAndType;)V

    check-cast v1, Lo/willRunSimpleAnimations;

    :goto_1
    move-object/from16 v0, p0

    .line 3083
    invoke-virtual {v1, v0}, Lo/willRunSimpleAnimations;->onMessageChannelReady(Lorg/w3c/dom/Element;)V

    .line 4012
    iget-object v1, v1, Lo/willRunSimpleAnimations;->onNavigationEvent:Lo/getViewForPositionAndType;

    .line 62
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 63
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const-string v5, "element.childNodes"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_18

    .line 64
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "element.childNodes.item(i)"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v9, 0x1

    const-string/jumbo v10, "span"

    if-ne v7, v9, :cond_6

    .line 65
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Lorg/w3c/dom/Element;

    .line 66
    invoke-static {v7, v1}, Lo/didStructureChange;->extraCallback(Lorg/w3c/dom/Element;Lo/getViewForPositionAndType;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4059
    iget-object v8, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_b

    .line 65
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.w3c.dom.Element"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "leafText"

    .line 69
    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4091
    sget-object v8, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    invoke-static {}, Lo/isMeasuring;->extraCallback()Landroid/content/Context;

    move-result-object v8

    .line 4146
    new-instance v11, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v11, v8}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 4092
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    .line 5066
    iget-object v12, v1, Lo/getViewForPositionAndType;->onNavigationEvent:Lo/hasTargetScrollPosition;

    if-eqz v12, :cond_c

    .line 6066
    iget-object v12, v1, Lo/getViewForPositionAndType;->onNavigationEvent:Lo/hasTargetScrollPosition;

    if-nez v12, :cond_7

    .line 4094
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6071
    :cond_7
    iget-object v13, v12, Lo/hasTargetScrollPosition;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 4095
    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "_"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    .line 6202
    invoke-static {v13, v14, v5, v5}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v13

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_9

    .line 4096
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 4097
    new-instance v14, Ljava/util/Locale;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v14, v15, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4102
    :cond_9
    new-instance v14, Ljava/util/Locale;

    const-string v9, "en"

    const-string v13, "IN"

    invoke-direct {v14, v9, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v20, v14

    .line 4106
    invoke-static {v7}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 4108
    move-object v15, v9

    check-cast v15, Ljava/lang/Number;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 8070
    iget-object v8, v12, Lo/hasTargetScrollPosition;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v8, :cond_b

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    const-string/jumbo v9, "true"

    .line 9056
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    move/from16 v18, v8

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v18, 0x0

    :goto_6
    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x56

    .line 4108
    invoke-static/range {v15 .. v22}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 9065
    :cond_c
    iget-object v9, v1, Lo/getViewForPositionAndType;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 10065
    iget-object v9, v1, Lo/getViewForPositionAndType;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v9, :cond_d

    goto/16 :goto_a

    .line 4116
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    const-string/jumbo v7, "semibold"

    .line 4118
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v11, v8}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onPostMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_9

    :sswitch_1
    const-string v7, "regular"

    .line 4119
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10093
    sget v7, Lo/getRemainingScrollHorizontal$extraCallback;->gilroy_regular:I

    .line 10101
    new-instance v9, Lo/prepareForNestedPrefetch;

    iget-object v12, v11, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v12, v7}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    const-string v12, "ResourcesCompat.getFont(context, font)!!"

    invoke-static {v7, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7}, Lo/prepareForNestedPrefetch;-><init>(Landroid/graphics/Typeface;)V

    .line 10093
    invoke-static {v8, v9}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_9

    .line 4120
    :sswitch_2
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4121
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const v9, -0x64a96342

    if-eq v8, v9, :cond_11

    const v9, -0x3084b11e

    if-eq v8, v9, :cond_10

    const v9, 0x11bcd

    if-eq v8, v9, :cond_f

    goto :goto_7

    :cond_f
    const-string v8, "INR"

    .line 4124
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "\u20b9"

    goto :goto_8

    :cond_10
    const-string v8, "CRED_COIN"

    .line 4123
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "\ue900"

    goto :goto_8

    :cond_11
    const-string v8, "CRED_GEM"

    .line 4122
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "\ue901"

    goto :goto_8

    :cond_12
    :goto_7
    const-string v7, ""

    .line 4120
    :goto_8
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v11, v7}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_9

    :sswitch_3
    const-string v7, "bold"

    .line 4117
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v11, v8}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_9
    move-object v8, v7

    .line 11063
    :cond_13
    :goto_a
    iget-object v7, v1, Lo/getViewForPositionAndType;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v7, :cond_15

    .line 4133
    sget-object v7, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    .line 12063
    iget-object v7, v1, Lo/getViewForPositionAndType;->onMessageChannelReady:Ljava/lang/String;

    if-nez v7, :cond_14

    .line 4133
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_14
    invoke-static {v7}, Lo/isPreLayout;->onNavigationEvent(Ljava/lang/String;)I

    move-result v7

    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12112
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v8, v9}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 13064
    :cond_15
    iget-object v7, v1, Lo/getViewForPositionAndType;->onPostMessage:Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 4136
    sget-object v7, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    .line 14064
    iget-object v7, v1, Lo/getViewForPositionAndType;->onPostMessage:Ljava/lang/String;

    if-nez v7, :cond_16

    .line 4136
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_16
    invoke-static {v7}, Lo/isPreLayout;->onNavigationEvent(Ljava/lang/String;)I

    move-result v7

    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14129
    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v9, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {v8, v9}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4138
    :cond_17
    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15059
    iget-object v7, v11, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 15156
    iget-object v7, v11, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v7, Ljava/lang/CharSequence;

    .line 69
    invoke-static {v7, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16059
    iget-object v8, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 16156
    :cond_18
    iget-object v0, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2e3a85 -> :sswitch_3
        0x313c79 -> :sswitch_2
        0x40c21f9c -> :sswitch_1
        0x48f2a2f3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "inputString"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 2054
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<format>"

    const-string v3, "$this$startsWith"

    .line 2332
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prefix"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "</format>"

    const-string v4, "$this$endsWith"

    .line 2354
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "suffix"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 35
    sget-object v1, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3000
    :try_start_0
    sget-object v1, Lo/didStructureChange;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/parsers/DocumentBuilder;

    .line 37
    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_1

    .line 38
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "format"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 40
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3059
    new-instance v2, Lo/getViewForPositionAndType;

    invoke-direct {v2, v3}, Lo/getViewForPositionAndType;-><init>(B)V

    invoke-static {v1, v2}, Lo/didStructureChange;->extraCallback(Lorg/w3c/dom/Element;Lo/getViewForPositionAndType;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 40
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.w3c.dom.Element"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "formatXmlString() called with: inputString = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "UTIL"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object v0

    .line 2054
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
