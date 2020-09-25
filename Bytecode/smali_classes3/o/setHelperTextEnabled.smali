.class public final Lo/setHelperTextEnabled;
.super Lo/setChipIconEnabled;
.source ""


# static fields
.field private static final extraCallback:[Ljava/lang/String;

.field private static final onMessageChannelReady:[Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:I

.field private final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

.field private onPostMessage:Ljava/security/SecureRandom;

.field private onTransact:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "firebase_"

    const-string v1, "google_"

    const-string v2, "ga_"

    .line 927
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setHelperTextEnabled;->onMessageChannelReady:[Ljava/lang/String;

    const-string v0, "_err"

    .line 928
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setHelperTextEnabled;->extraCallback:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lo/setChipIconEnabled;-><init>(Lo/setCheckedIcon;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lo/setHelperTextEnabled;->onTransact:Ljava/lang/Integer;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    if-nez p0, :cond_0

    .line 732
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 733
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 734
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 735
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 736
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 737
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 738
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 739
    :cond_2
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 740
    check-cast v2, [Landroid/os/Parcelable;

    .line 741
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_1

    .line 742
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 743
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 745
    :cond_4
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 746
    check-cast v2, Ljava/util/List;

    .line 747
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 748
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 749
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 750
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v11, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImpl:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->onPostMessage()I

    move-result v0

    move v15, v0

    .line 231
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 234
    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz p6, :cond_5

    .line 236
    invoke-direct {v9, v8}, Lo/setHelperTextEnabled;->asInterface(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 238
    invoke-direct {v9, v8}, Lo/setHelperTextEnabled;->onTransact(Ljava/lang/String;)I

    move-result v0

    :cond_6
    :goto_4
    if-eqz v0, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    move-object v1, v8

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 242
    :goto_5
    invoke-static {v11, v0, v8, v8, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_8
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v7, p3

    .line 248
    invoke-virtual {v0, v1, v10, v7, v8}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x16

    move-object v14, v8

    goto :goto_6

    :cond_9
    move-object/from16 v7, p3

    .line 251
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v8

    move/from16 v8, v18

    .line 252
    invoke-direct/range {v0 .. v8}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    :goto_6
    if-eqz v0, :cond_a

    const-string v1, "_ev"

    .line 254
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 255
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v0, v14, v14, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :cond_a
    invoke-static {v14}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v13, :cond_b

    sget-object v0, Lo/setCloseIconVisible;->onPostMessage:[Ljava/lang/String;

    .line 259
    invoke-static {v14, v0}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_b
    add-int/lit8 v0, v17, 0x1

    if-le v0, v15, :cond_e

    if-eqz v13, :cond_c

    const-string v1, "Item cannot contain custom parameters"

    goto :goto_7

    :cond_c
    const/16 v1, 0x3f

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Child bundles can\'t contain more than "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " custom params"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 267
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v3

    invoke-virtual {v3, v10}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v11}, Lo/setLiftOnScrollTargetViewId;->extraCallback(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v2, v1, v3, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v13, :cond_d

    const/16 v1, 0x17

    goto :goto_8

    :cond_d
    const/4 v1, 0x5

    .line 274
    :goto_8
    invoke-static {v11, v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;I)Z

    .line 275
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_e
    move/from16 v17, v0

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method private static ICustomTabsCallback(Landroid/os/Bundle;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "_err"

    .line 537
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    int-to-long v2, p1

    .line 539
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 3

    .line 29
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 2

    .line 188
    instance-of v0, p4, [Landroid/os/Parcelable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    check-cast p4, [Landroid/os/Parcelable;

    array-length p4, p4

    goto :goto_0

    .line 190
    :cond_0
    instance-of v0, p4, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 191
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    :goto_0
    if-le p4, p3, :cond_1

    .line 194
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 195
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 197
    invoke-virtual {p3, v0, p1, p2, p4}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method static ICustomTabsCallback(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 647
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;)[Landroid/os/Bundle;
    .locals 2

    .line 438
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 439
    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    .line 440
    :cond_0
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 441
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 442
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 443
    check-cast p0, Ljava/util/ArrayList;

    .line 444
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ICustomTabsCallback$Stub(Ljava/lang/String;)Z
    .locals 5

    .line 760
    sget-object v0, Lo/setHelperTextEnabled;->extraCallback:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 761
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final asBinder(Ljava/lang/String;)I
    .locals 2

    const-string v0, "_ldl"

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x800

    return p1

    :cond_0
    const-string v0, "_id"

    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x100

    return p1

    .line 546
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$CallbackHandler:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_lgclid"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    return p1

    :cond_2
    const/16 p1, 0x24

    return p1
.end method

.method static asBinder()Ljava/security/MessageDigest;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_0
    const-string v1, "MD5"

    .line 596
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final asInterface(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    .line 173
    invoke-virtual {p0, v0, p1}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const/16 v1, 0x28

    .line 177
    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static extraCallback(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 837
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 838
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setStartIconVisible;

    .line 840
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 841
    iget-object v3, v1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v3, v1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-wide v3, v1, Lo/setStartIconVisible;->extraCallback:J

    const-string v5, "creation_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 844
    iget-object v3, v1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v3, v3, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v3, v1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-virtual {v3}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lo/setChipIconVisible;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 846
    iget-boolean v3, v1, Lo/setStartIconVisible;->onPostMessage:Z

    const-string v4, "active"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    iget-object v3, v1, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 848
    iget-object v3, v1, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    const-string v4, "trigger_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_1
    iget-object v3, v1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    if-eqz v3, :cond_2

    .line 850
    iget-object v3, v1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "timed_out_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v3, v1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    if-eqz v3, :cond_2

    .line 852
    iget-object v3, v1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 853
    invoke-virtual {v3}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timed_out_event_params"

    .line 854
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 855
    :cond_2
    iget-wide v3, v1, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    const-string v5, "trigger_timeout"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 856
    iget-object v3, v1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    if-eqz v3, :cond_3

    .line 857
    iget-object v3, v1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "triggered_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v3, v1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    if-eqz v3, :cond_3

    .line 859
    iget-object v3, v1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 860
    invoke-virtual {v3}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "triggered_event_params"

    .line 861
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 862
    :cond_3
    iget-object v3, v1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-wide v3, v3, Lo/setError;->extraCallback:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 863
    iget-wide v3, v1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    const-string v5, "time_to_live"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 864
    iget-object v3, v1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    if-eqz v3, :cond_4

    .line 865
    iget-object v3, v1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v4, "expired_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v3, v1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v3, v3, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    if-eqz v3, :cond_4

    .line 867
    iget-object v1, v1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    iget-object v1, v1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 868
    invoke-virtual {v1}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "expired_event_params"

    .line 869
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 870
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private static extraCallback(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 620
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 621
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method static extraCallback(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android-app://com.google.appcrawler"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static extraCallback(Ljava/lang/String;)Z
    .locals 1

    .line 632
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 308
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3

    .line 309
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 311
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    .line 313
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v2

    .line 314
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v2
.end method

.method private final onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 705
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 707
    :try_start_0
    invoke-static {p1}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p1

    const/16 v1, 0x40

    .line 708
    invoke-virtual {p1, p2, v1}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 709
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 710
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    .line 711
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 712
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 713
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 714
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 720
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 717
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1

    .line 187
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 637
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(JJ)J
    .locals 2

    const-wide/32 v0, 0xea60

    mul-long p2, p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 771
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static onNavigationEvent(Lo/zzfa$zza;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 908
    :cond_0
    invoke-virtual {p0}, Lo/zzfa$zza;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 909
    invoke-virtual {p0, v3}, Lo/zzfa$zza;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 910
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-eqz v4, :cond_1

    .line 911
    check-cast v3, [Landroid/os/Parcelable;

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method static onNavigationEvent([B)J
    .locals 9

    .line 603
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    const-wide/16 v3, 0x0

    .line 607
    array-length v0, p0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    .line 608
    array-length v1, p0

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_1

    .line 609
    aget-byte v1, p0, v0

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-wide v3
.end method

.method public static onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_2

    if-eqz p2, :cond_1

    .line 351
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method private static onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 524
    invoke-static {p0, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x28

    const/4 p3, 0x1

    .line 526
    invoke-static {p2, p1, p3}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_ev"

    .line 527
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 530
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 531
    instance-of p1, p4, Ljava/lang/String;

    if-nez p1, :cond_0

    instance-of p1, p4, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 532
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p1, p1

    const-string p3, "_el"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method static onNavigationEvent(Landroid/content/Context;Z)Z
    .locals 1

    .line 613
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 615
    invoke-static {p0, p1}, Lo/setHelperTextEnabled;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 616
    invoke-static {p0, p1}, Lo/setHelperTextEnabled;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Landroid/os/Bundle;I)Z
    .locals 4

    .line 214
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return v1

    .line 216
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/2addr v1, v3

    if-le v1, p1, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 754
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 756
    invoke-static {p0, v3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 354
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 356
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v2

    const/16 v3, 0x11

    const-string v4, "param"

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v5, Lo/zziq;->MediaBrowserCompat$MediaBrowserImpl:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v5}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    invoke-static/range {p4 .. p4}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p8, :cond_4

    .line 359
    sget-object v2, Lo/setCloseIconVisible;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-static {v8, v2}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x14

    return v0

    .line 361
    :cond_0
    iget-object v2, v7, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipSpacingResource;->setDefaultImpl()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x19

    return v0

    :cond_1
    const/16 v2, 0xc8

    .line 365
    invoke-direct {v7, v4, v8, v2, v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 370
    instance-of v5, v0, [Landroid/os/Parcelable;

    if-eqz v5, :cond_2

    .line 371
    move-object v5, v0

    check-cast v5, [Landroid/os/Parcelable;

    array-length v6, v5

    if-le v6, v2, :cond_3

    .line 372
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 373
    :cond_2
    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 374
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    .line 376
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    :goto_0
    const/16 v10, 0x11

    goto :goto_1

    :cond_4
    const/16 v0, 0x15

    return v0

    :cond_5
    if-eqz p8, :cond_6

    const/16 v1, 0x3e8

    .line 381
    invoke-direct {v7, v4, v8, v1, v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    const/4 v10, 0x0

    .line 383
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->AudioAttributesImplBaseParcelizer:Lo/setStatusBarForegroundColor;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11, v2}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 384
    invoke-static/range {p2 .. p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 385
    :cond_7
    invoke-static/range {p3 .. p3}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/16 v1, 0x100

    goto :goto_2

    :cond_9
    const/16 v1, 0x64

    .line 388
    :goto_2
    invoke-virtual {v7, v4, v8, v1, v0}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v10

    :cond_a
    if-eqz p8, :cond_14

    .line 392
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_b

    .line 393
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v13, 0x1

    goto :goto_3

    :cond_b
    const/4 v13, 0x0

    .line 394
    :goto_3
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_d

    if-eqz v13, :cond_c

    .line 396
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 398
    :cond_d
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 399
    move-object v14, v0

    check-cast v14, [Landroid/os/Parcelable;

    .line 400
    array-length v15, v14

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v15, :cond_c

    aget-object v0, v14, v6

    .line 401
    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_e

    .line 402
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 405
    invoke-virtual {v1, v2, v0, v8}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    if-eqz v13, :cond_f

    .line 408
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v16, v6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    goto :goto_5

    :cond_f
    move/from16 v16, v6

    :goto_5
    add-int/lit8 v6, v16, 0x1

    goto :goto_4

    .line 411
    :cond_10
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 412
    move-object v14, v0

    check-cast v14, Ljava/util/ArrayList;

    .line 413
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v15, :cond_c

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v16, v0, 0x1

    .line 414
    instance-of v0, v1, Landroid/os/Bundle;

    if-nez v0, :cond_11

    .line 415
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 418
    invoke-virtual {v0, v2, v1, v8}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    if-eqz v13, :cond_12

    .line 421
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    :cond_12
    move/from16 v0, v16

    goto :goto_6

    :cond_13
    :goto_7
    if-eqz v9, :cond_14

    return v10

    :cond_14
    const/4 v0, 0x4

    return v0
.end method

.method public static onPostMessage(Ljava/util/List;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 817
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 820
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setError;

    .line 821
    iget-object v2, v1, Lo/setError;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 822
    iget-object v2, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, v1, Lo/setError;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_2
    iget-object v2, v1, Lo/setError;->onPostMessage:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 824
    iget-object v2, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, v1, Lo/setError;->onPostMessage:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 825
    :cond_3
    iget-object v2, v1, Lo/setError;->onTransact:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 826
    iget-object v2, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, v1, Lo/setError;->onTransact:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final onPostMessage(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 320
    :cond_0
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_e

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 322
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 323
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 324
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 325
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 326
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 327
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 328
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 329
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 330
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 331
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 332
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 335
    :cond_8
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 336
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object p3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, p3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 337
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object p3, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, p3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz p4, :cond_c

    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_9

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_c

    .line 338
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    .line 340
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 341
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 342
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 343
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 345
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0

    .line 333
    :cond_d
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 334
    invoke-static {p2, p1, p3}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_3
    return-object p2
.end method

.method static onPostMessage(Landroid/os/Parcelable;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 724
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 725
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw p0
.end method

.method private static onRelationshipValidationResult(Ljava/lang/String;)Z
    .locals 1

    .line 315
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final onTransact(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    .line 180
    invoke-virtual {p0, v0, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const/16 v1, 0x28

    .line 184
    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;Z)I
    .locals 4

    const-string v0, "event"

    .line 156
    invoke-virtual {p0, v0, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xd

    if-eqz p2, :cond_1

    .line 159
    sget-object p2, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    sget-object v3, Lo/setChipIconResource;->onNavigationEvent:[Ljava/lang/String;

    invoke-virtual {p0, v0, p2, v3, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 161
    :cond_1
    sget-object p2, Lo/setChipIconResource;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    const/16 p2, 0x28

    .line 163
    invoke-virtual {p0, v0, p2, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method final ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    .line 681
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 682
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 686
    invoke-static {}, Lo/setHelperTextEnabled;->asBinder()Ljava/security/MessageDigest;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    .line 688
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 691
    :try_start_0
    invoke-direct {p0, p1, p2}, Lo/setHelperTextEnabled;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 693
    invoke-static {p1}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p1

    .line 694
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 695
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_1

    .line 696
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 697
    invoke-static {p1}, Lo/setHelperTextEnabled;->onNavigationEvent([B)J

    move-result-wide v2

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 703
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-wide v2, v4

    :goto_0
    return-wide v2
.end method

.method public final ICustomTabsCallback(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;
    .locals 6

    .line 873
    :try_start_0
    invoke-static {p4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "v%s.%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 876
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-virtual {p0}, Lo/setHelperTextEnabled;->onRelationshipValidationResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    aput-object p4, v1, v5

    aput-object p3, v1, v3

    const/4 p1, 0x3

    .line 877
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    .line 878
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 879
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    invoke-virtual {p2}, Lo/setStartIconTintList;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&ddl_test=1"

    .line 880
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 881
    :cond_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 883
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 884
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    .line 885
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 916
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setShowBuffering;J)V
    .locals 2

    .line 784
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 785
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 786
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 789
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 148
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 150
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 151
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v1, v2, p1, p2, p3}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 280
    invoke-static {p1}, Lo/setHelperTextEnabled;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 281
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->newSession()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 283
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    .line 284
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 285
    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 287
    :cond_1
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object v0, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 289
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 290
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 291
    invoke-static {p2}, Lo/setHelperTextEnabled;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 292
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 294
    invoke-static {p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Invalid admob_app_id. Analytics disabled."

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 296
    :cond_4
    iget-object p1, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->newSession()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 297
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 299
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method final ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 127
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 130
    :cond_0
    invoke-static {p4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lo/setHelperTextEnabled;->onMessageChannelReady:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 132
    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Name starts with reserved prefix. Type, name"

    .line 139
    invoke-virtual {p2, p3, p1, p4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_3
    if-eqz p2, :cond_5

    .line 141
    invoke-static {p4, p2}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 142
    invoke-static {p4, p3}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 143
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_5
    return v4
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 6

    .line 15
    iget-object v0, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 17
    iget-object v0, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 18
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v4

    invoke-interface {v4}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lo/setHelperTextEnabled;->ICustomTabsCallback:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lo/setHelperTextEnabled;->ICustomTabsCallback:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_0
    iget-object v0, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 21
    :try_start_1
    iget-object v1, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 22
    iget-object v1, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 23
    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 918
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 920
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method protected final Q_()V
    .locals 6

    .line 6
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lo/setHelperTextEnabled;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method final asInterface()Ljava/security/SecureRandom;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 26
    iget-object v0, p0, Lo/setHelperTextEnabled;->onPostMessage:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lo/setHelperTextEnabled;->onPostMessage:Ljava/security/SecureRandom;

    .line 28
    :cond_0
    iget-object v0, p0, Lo/setHelperTextEnabled;->onPostMessage:Ljava/security/SecureRandom;

    return-object v0
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 446
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImpl:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_1

    .line 448
    sget-object v0, Lo/setChipIconResource;->onMessageChannelReady:[Ljava/lang/String;

    .line 449
    invoke-static {v10, v0}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    move v15, v0

    goto :goto_1

    :cond_1
    move/from16 v15, p6

    :goto_1
    const/16 v16, 0x0

    if-eqz v11, :cond_f

    .line 453
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->onPostMessage()I

    move-result v7

    .line 456
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->subscribe:Lo/setStatusBarForegroundColor;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v1}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 458
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 459
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 461
    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    :goto_4
    if-eqz p5, :cond_5

    .line 463
    invoke-direct {v9, v5}, Lo/setHelperTextEnabled;->asInterface(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_6

    .line 465
    invoke-direct {v9, v5}, Lo/setHelperTextEnabled;->onTransact(Ljava/lang/String;)I

    move-result v0

    :cond_6
    :goto_6
    if-eqz v0, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    move-object v1, v5

    goto :goto_7

    :cond_7
    move-object/from16 v1, v16

    .line 469
    :goto_7
    invoke-static {v8, v0, v5, v5, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move/from16 v20, v7

    move-object v2, v8

    goto :goto_9

    .line 473
    :cond_8
    invoke-virtual {v11, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v19, v5

    move-object v5, v8

    move-object/from16 v6, p4

    move/from16 v20, v7

    move/from16 v7, p5

    move-object/from16 v21, v8

    move v8, v15

    .line 474
    invoke-direct/range {v0 .. v8}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    if-eqz v14, :cond_9

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    .line 476
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    invoke-static {v2, v0, v3, v3, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    move-object/from16 v3, v19

    move-object/from16 v2, v21

    if-eqz v0, :cond_b

    const-string v1, "_ev"

    .line 478
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x15

    if-ne v0, v1, :cond_a

    move-object v5, v10

    goto :goto_8

    :cond_a
    move-object v5, v3

    .line 483
    :goto_8
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 484
    invoke-static {v2, v0, v5, v3, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_9
    move-object/from16 v6, p1

    move-object v8, v2

    move/from16 v7, v20

    goto/16 :goto_3

    .line 487
    :cond_b
    :goto_a
    invoke-static {v3}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v18, 0x1

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    const/16 v4, 0x30

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Event can\'t contain more than "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " params"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 492
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v5

    .line 493
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v6

    invoke-virtual {v6, v10}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {v7, v11}, Lo/setLiftOnScrollTargetViewId;->extraCallback(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 495
    invoke-virtual {v5, v4, v6, v7}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    .line 496
    invoke-static {v2, v4}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;I)Z

    .line 497
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v6, p1

    move/from16 v18, v0

    goto :goto_c

    :cond_c
    move/from16 v18, v0

    goto :goto_b

    :cond_d
    move/from16 v1, v20

    :goto_b
    move-object/from16 v6, p1

    :goto_c
    move v7, v1

    move-object v8, v2

    goto/16 :goto_3

    :cond_e
    move-object v2, v8

    move-object/from16 v16, v2

    :cond_f
    return-object v16
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "_ev"

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, v1, p2, v2, v2}, Lo/setHelperTextEnabled;->onPostMessage(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 433
    :cond_0
    invoke-static {p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    const/4 p1, 0x0

    .line 436
    invoke-direct {p0, v1, p2, p1, v2}, Lo/setHelperTextEnabled;->onPostMessage(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 915
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCallback()V

    return-void
.end method

.method final extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 563
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 564
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 566
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 567
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 568
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 570
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 571
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 573
    :cond_3
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 575
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onLoadChildren:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 576
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 579
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 580
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 581
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 582
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/setLiftOnScrollTargetViewId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    .line 583
    invoke-virtual {p3, v0, p2, p1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V
    .locals 2

    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 778
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 782
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final extraCallback(Lo/setShowBuffering;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setShowBuffering;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 830
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 831
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 834
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 109
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 111
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 113
    invoke-virtual {v1, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 115
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 118
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 121
    invoke-virtual {v1, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 123
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 202
    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 205
    :cond_3
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 206
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_4

    .line 207
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 208
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 209
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    .line 210
    invoke-virtual {p3, v0, p1, p2, p4}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method final extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, p2, v0, p3}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 924
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 917
    invoke-super {p0}, Lo/setChipIconEnabled;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 923
    invoke-super {p0}, Lo/setChipIconEnabled;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 921
    invoke-super {p0}, Lo/setChipIconEnabled;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(I)I
    .locals 2

    .line 768
    invoke-static {}, Lo/PaymentItem;->onNavigationEvent()Lo/PaymentItem;

    move-result-object p1

    .line 769
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ldl"

    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0, p1}, Lo/setHelperTextEnabled;->asBinder(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lo/setHelperTextEnabled;->onPostMessage(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 560
    :cond_0
    invoke-direct {p0, p1}, Lo/setHelperTextEnabled;->asBinder(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, v1, v1}, Lo/setHelperTextEnabled;->onPostMessage(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 914
    invoke-super {p0}, Lo/setChipIconEnabled;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 585
    invoke-virtual/range {v0 .. v5}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 587
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 588
    invoke-static {p1, p2}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;I)Z

    .line 589
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    :cond_1
    int-to-long p2, p5

    const-string p4, "_el"

    .line 592
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 593
    :cond_2
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p2

    const-string p3, "auto"

    const-string p4, "_err"

    invoke-virtual {p2, p3, p4, p1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setShowBuffering;I)V
    .locals 2

    .line 791
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 792
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 796
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setShowBuffering;Landroid/os/Bundle;)V
    .locals 1

    .line 812
    :try_start_0
    invoke-interface {p1, p2}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 815
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setShowBuffering;Z)V
    .locals 2

    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 806
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 810
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/String;)Z
    .locals 2

    .line 626
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 627
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 630
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method final onNavigationEvent(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "gclid"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "utm_campaign"

    .line 38
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utm_source"

    .line 39
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utm_medium"

    .line 40
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 46
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 50
    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "campaign"

    .line 52
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "source"

    .line 54
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "medium"

    .line 56
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 58
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "utm_term"

    .line 59
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "term"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "utm_content"

    .line 62
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "aclid"

    .line 65
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "cp1"

    .line 68
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v1, "anid"

    .line 71
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lo/zzir;
    .locals 10

    move-object v7, p0

    move-object v8, p2

    move-object v0, p3

    .line 664
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move/from16 v1, p9

    .line 666
    invoke-virtual {p0, p2, v1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 673
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    :goto_0
    const-string v0, "_o"

    move-object v9, p4

    .line 674
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 678
    invoke-virtual/range {v0 .. v6}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 679
    invoke-virtual {p0, v0}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 680
    new-instance v6, Lo/zzir;

    new-instance v2, Lo/zzfa$zza;

    invoke-direct {v2, v0}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    move-object v0, v6

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    return-object v6

    .line 668
    :cond_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 670
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid conditional property event name"

    .line 671
    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final onNavigationEvent(Ljava/lang/String;)Z
    .locals 1

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 650
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 88
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 92
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    .line 95
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 98
    invoke-virtual {v1, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 100
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final onPostMessage(Ljava/lang/String;)I
    .locals 3

    const-string v0, "user property"

    .line 166
    invoke-virtual {p0, v0, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    return v2

    .line 168
    :cond_0
    sget-object v1, Lo/setChipIcon;->extraCallback:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    const/16 v1, 0x18

    .line 170
    invoke-virtual {p0, v0, v1, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final onPostMessage(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const-string v0, "_ldl"

    .line 550
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0, p1}, Lo/setHelperTextEnabled;->asBinder(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property referrer"

    .line 553
    invoke-virtual {p0, v1, p1, v0, p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0, p1}, Lo/setHelperTextEnabled;->asBinder(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property"

    .line 556
    invoke-virtual {p0, v1, p1, v0, p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method final onPostMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 655
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 657
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 658
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 659
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v2}, Lo/setLiftOnScrollTargetViewId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method final onPostMessage(Landroid/os/Bundle;J)V
    .locals 6

    const-string v0, "_et"

    .line 772
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 774
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Params already contained engagement"

    invoke-virtual {v3, v5, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-long/2addr p2, v1

    .line 775
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method final onPostMessage(Lo/setFabCradleRoundedCornerRadius;I)V
    .locals 8

    .line 502
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 503
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    invoke-static {v2}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_0

    const/16 v3, 0x30

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event can\'t contain more than "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " params"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 509
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asBinder()Lo/setFabAlignmentMode;

    move-result-object v4

    .line 510
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v5

    iget-object v6, p1, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 511
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v6

    iget-object v7, p1, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lo/setLiftOnScrollTargetViewId;->extraCallback(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-virtual {v4, v3, v5, v6}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 513
    iget-object v3, p1, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/os/Bundle;I)Z

    .line 514
    iget-object v3, p1, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/setShowBuffering;[B)V
    .locals 2

    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    .line 799
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 800
    :try_start_0
    invoke-interface {p1, v0}, Lo/setShowBuffering;->onPostMessage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 803
    iget-object p2, p0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final onPostMessage(Ljava/lang/String;D)Z
    .locals 3

    const/4 v0, 0x0

    .line 888
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 889
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deeplink"

    .line 891
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "timestamp"

    .line 893
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 894
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 895
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 897
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 2

    .line 765
    iget-object v0, p0, Lo/setHelperTextEnabled;->onTransact:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 766
    invoke-static {}, Lo/PaymentItem;->onNavigationEvent()Lo/PaymentItem;

    move-result-object v0

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PaymentItem;->onPostMessage(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/setHelperTextEnabled;->onTransact:Ljava/lang/Integer;

    .line 767
    :cond_0
    iget-object v0, p0, Lo/setHelperTextEnabled;->onTransact:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final onTransact()Z
    .locals 2

    .line 899
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 922
    invoke-super {p0}, Lo/setChipIconEnabled;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 925
    invoke-super {p0}, Lo/setChipIconEnabled;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 926
    invoke-super {p0}, Lo/setChipIconEnabled;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 919
    invoke-super {p0}, Lo/setChipIconEnabled;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
