.class public final Lo/MediaBrowserCompat$MediaItem$Flags;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

.field public static final synthetic $SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I


# instance fields
.field public final extraCallback:Z

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8219
    invoke-static {}, Lo/CrashlyticsReport$Session$Event$extraCallback;->values()[Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/CrashlyticsReport$Session$Event$extraCallback;->DOCUMENTS:Lo/CrashlyticsReport$Session$Event$extraCallback;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    sget-object v3, Lo/CrashlyticsReport$Session$Event$extraCallback;->QUERY:Lo/CrashlyticsReport$Session$Event$extraCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 8070
    :catch_1
    invoke-static {}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->values()[Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    :try_start_2
    sget-object v3, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    sget-object v2, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->NO_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/MediaBrowserCompat$MediaItem$Flags;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    sget-object v1, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->UNKNOWN_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/initTitle;",
            ">;Z)V"
        }
    .end annotation

    .line 8016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8017
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaItem$Flags;->onMessageChannelReady:Ljava/lang/String;

    .line 8018
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaItem$Flags;->onNavigationEvent:Ljava/util/List;

    .line 8019
    iput-boolean p3, p0, Lo/MediaBrowserCompat$MediaItem$Flags;->extraCallback:Z

    return-void
.end method

.method static onMessageChannelReady(Lo/addSubscription;Lo/isPlayable;I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    if-nez v11, :cond_0

    .line 51
    iget v1, v0, Lo/addSubscription;->ICustomTabsCallback:I

    .line 52
    iget-object v2, v0, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[Lo/MediaBrowserCompat$SearchResultReceiver;

    move v14, v1

    move-object v15, v2

    const/4 v9, 0x0

    goto :goto_0

    .line 55
    :cond_0
    iget v1, v0, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback:I

    .line 56
    iget-object v2, v0, Lo/addSubscription;->handleMessage:[Lo/MediaBrowserCompat$SearchResultReceiver;

    move v14, v1

    move-object v15, v2

    const/4 v9, 0x2

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v14, :cond_57

    .line 60
    aget-object v1, v15, v8

    .line 1195
    iget-boolean v2, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsService:Z

    if-nez v2, :cond_1

    .line 1196
    invoke-virtual {v1}, Lo/MediaBrowserCompat$SearchResultReceiver;->extraCallback()V

    :cond_1
    const/4 v2, 0x1

    .line 1198
    iput-boolean v2, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsService:Z

    .line 2131
    iget v3, v0, Lo/addSubscription;->onResult:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 65
    invoke-static {v10, v11, v9, v1}, Lo/sendRequest;->extraCallback(Lo/isPlayable;IILo/MediaBrowserCompat$SearchResultReceiver;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v13, v8

    move v11, v9

    move/from16 v23, v14

    move-object/from16 v28, v15

    const/16 v25, 0x0

    goto/16 :goto_3d

    .line 3086
    :cond_4
    :goto_3
    iget-object v6, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onNavigationEvent:Lo/removeSubscription;

    .line 3087
    iget-object v5, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->extraCallback:Lo/removeSubscription;

    .line 3088
    iget-object v4, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onPostMessage:Lo/removeSubscription;

    .line 3089
    iget-object v3, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onMessageChannelReady:Lo/removeSubscription;

    .line 3090
    iget-object v7, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback:Lo/removeSubscription;

    .line 3096
    iget v13, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onTransact:F

    .line 3100
    iget-object v12, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v12, v12, v11

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v12, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-nez v11, :cond_9

    .line 3106
    iget v12, v7, Lo/removeSubscription;->getItem:I

    move/from16 v20, v8

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 3107
    :goto_5
    iget v8, v7, Lo/removeSubscription;->getItem:I

    move/from16 v21, v12

    const/4 v12, 0x1

    if-ne v8, v12, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 3108
    :goto_6
    iget v12, v7, Lo/removeSubscription;->getItem:I

    move/from16 v22, v8

    const/4 v8, 0x2

    if-ne v12, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    move/from16 v23, v14

    move/from16 v12, v22

    const/16 v18, 0x0

    move/from16 v22, v13

    move-object v13, v6

    goto :goto_b

    :cond_9
    move/from16 v20, v8

    .line 3110
    iget v8, v7, Lo/removeSubscription;->subscribe:I

    if-nez v8, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    .line 3111
    :goto_8
    iget v12, v7, Lo/removeSubscription;->subscribe:I

    move/from16 v21, v8

    const/4 v8, 0x1

    if-ne v12, v8, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    .line 3112
    :goto_9
    iget v12, v7, Lo/removeSubscription;->subscribe:I

    move/from16 v22, v13

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    move-object v13, v6

    move/from16 v23, v14

    const/16 v18, 0x0

    move/from16 v37, v12

    move v12, v8

    move/from16 v8, v37

    :goto_b
    const/16 v24, 0x0

    if-nez v18, :cond_19

    .line 3120
    iget-object v14, v13, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v14, v14, v9

    if-nez v2, :cond_e

    if-eqz v8, :cond_d

    goto :goto_c

    :cond_d
    const/16 v26, 0x4

    goto :goto_d

    :cond_e
    :goto_c
    const/16 v26, 0x1

    .line 3125
    :goto_d
    invoke-virtual {v14}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v27

    move-object/from16 v28, v15

    .line 3127
    iget-object v15, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v15, :cond_f

    if-eq v13, v6, :cond_f

    .line 3128
    iget-object v15, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v15}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v15

    add-int v27, v27, v15

    :cond_f
    move/from16 v15, v27

    if-eqz v8, :cond_10

    if-eq v13, v6, :cond_10

    if-eq v13, v4, :cond_10

    move-object/from16 v26, v7

    move/from16 v27, v12

    const/4 v12, 0x6

    goto :goto_e

    :cond_10
    if-eqz v21, :cond_11

    if-eqz v2, :cond_11

    move-object/from16 v26, v7

    move/from16 v27, v12

    const/4 v12, 0x4

    goto :goto_e

    :cond_11
    move/from16 v27, v12

    move/from16 v12, v26

    move-object/from16 v26, v7

    .line 3139
    :goto_e
    iget-object v7, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_13

    if-ne v13, v4, :cond_12

    .line 3141
    iget-object v7, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v29, v6

    iget-object v6, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move/from16 v30, v8

    const/4 v8, 0x5

    invoke-virtual {v10, v7, v6, v15, v8}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_f

    :cond_12
    move-object/from16 v29, v6

    move/from16 v30, v8

    .line 3144
    iget-object v6, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v8, 0x6

    invoke-virtual {v10, v6, v7, v15, v8}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 3147
    :goto_f
    iget-object v6, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {v10, v6, v7, v15, v12}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    goto :goto_10

    :cond_13
    move-object/from16 v29, v6

    move/from16 v30, v8

    :goto_10
    if-eqz v2, :cond_15

    .line 3643
    iget v6, v13, Lo/removeSubscription;->getExtras:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_14

    .line 3152
    iget-object v6, v13, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v6, v6, v11

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v7, :cond_14

    .line 3154
    iget-object v6, v13, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v7, v9, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v13, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v8, 0x5

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v7, v12, v8}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_11

    :cond_14
    const/4 v12, 0x0

    .line 3158
    :goto_11
    iget-object v6, v13, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v9

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v8, 0x6

    invoke-virtual {v10, v6, v7, v12, v8}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 3164
    :cond_15
    iget-object v6, v13, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v7, v9, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_17

    .line 3166
    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 3167
    iget-object v7, v6, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_17

    iget-object v7, v6, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-eq v7, v13, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v24, v6

    :cond_17
    :goto_12
    if-eqz v24, :cond_18

    move-object/from16 v13, v24

    move-object/from16 v7, v26

    move/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v6, v29

    move/from16 v8, v30

    goto/16 :goto_b

    :cond_18
    move-object/from16 v7, v26

    move/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v6, v29

    move/from16 v8, v30

    const/16 v18, 0x1

    goto/16 :goto_b

    :cond_19
    move-object/from16 v29, v6

    move-object/from16 v26, v7

    move/from16 v30, v8

    move/from16 v27, v12

    move-object/from16 v28, v15

    if-eqz v3, :cond_1a

    .line 3181
    iget-object v6, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v7, v9, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_1a

    .line 3182
    iget-object v6, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v7

    .line 3183
    iget-object v8, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v12, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v12, v7

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3184
    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    neg-int v6, v6

    const/4 v12, 0x5

    .line 3183
    invoke-virtual {v10, v8, v7, v6, v12}, Lo/isPlayable;->extraCallback(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_1a
    if-eqz v2, :cond_1b

    .line 3190
    iget-object v2, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v6, v9, 0x1

    aget-object v2, v2, v6

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v6

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v8, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v8, v6

    .line 3192
    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    const/4 v8, 0x6

    .line 3190
    invoke-virtual {v10, v2, v7, v6, v8}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 3196
    :cond_1b
    iget-object v2, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asInterface:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 3198
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_25

    .line 3203
    iget-boolean v8, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback$Stub:Z

    if-eqz v8, :cond_1c

    iget-boolean v8, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->newSession:Z

    if-nez v8, :cond_1c

    .line 3204
    iget v8, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    int-to-float v13, v8

    goto :goto_13

    :cond_1c
    move/from16 v13, v22

    :goto_13
    move-object/from16 v14, v24

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v12, v6, :cond_25

    .line 3208
    invoke-virtual {v2, v12}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lo/removeSubscription;

    .line 3209
    iget-object v8, v7, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    aget v8, v8, v11

    const/16 v18, 0x0

    cmpg-float v22, v8, v18

    if-gez v22, :cond_1e

    .line 3212
    iget-boolean v8, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->newSession:Z

    if-eqz v8, :cond_1d

    .line 3213
    iget-object v0, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v8, v9, 0x1

    aget-object v0, v0, v8

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v8, 0x4

    invoke-virtual {v10, v0, v7, v2, v8}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v22, 0x4

    goto :goto_16

    :cond_1d
    move-object/from16 v16, v2

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v22, 0x4

    goto :goto_15

    :cond_1e
    move-object/from16 v16, v2

    const/16 v22, 0x4

    const/4 v2, 0x0

    :goto_15
    cmpl-float v31, v8, v2

    if-nez v31, :cond_1f

    .line 3220
    iget-object v0, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v2, v9, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v2, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v10, v0, v2, v8, v7}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    :goto_16
    move-object/from16 v34, v1

    move/from16 v33, v6

    const/16 v17, 0x6

    const/16 v25, 0x0

    goto/16 :goto_1a

    :cond_1f
    const/16 v17, 0x6

    const/16 v25, 0x0

    if-eqz v14, :cond_24

    .line 3226
    iget-object v2, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3227
    iget-object v14, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v32, v9, 0x1

    aget-object v14, v14, v32

    iget-object v14, v14, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3228
    iget-object v0, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v9

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move/from16 v33, v6

    .line 3229
    iget-object v6, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v32

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v32, v7

    .line 3230
    invoke-virtual/range {p1 .. p1}, Lo/isPlayable;->onMessageChannelReady()Lo/getDescription;

    move-result-object v7

    move-object/from16 v34, v1

    const/4 v1, 0x0

    .line 4215
    iput v1, v7, Lo/getDescription;->ICustomTabsCallback:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v18, v13, v1

    if-eqz v18, :cond_23

    cmpl-float v18, v15, v8

    if-nez v18, :cond_20

    goto :goto_17

    :cond_20
    cmpl-float v18, v15, v1

    if-nez v18, :cond_21

    .line 4225
    iget-object v0, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v6}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4226
    iget-object v0, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v0, v14, v11}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto :goto_18

    :cond_21
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v31, :cond_22

    .line 4228
    iget-object v2, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v2, v0, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4229
    iget-object v0, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v0, v6, v11}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto :goto_18

    :cond_22
    div-float/2addr v15, v13

    div-float v31, v8, v13

    div-float v15, v15, v31

    .line 4237
    iget-object v11, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v11, v2, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4238
    iget-object v1, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v1, v14, v11}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4239
    iget-object v1, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v1, v6, v15}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4240
    iget-object v1, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    neg-float v2, v15

    invoke-virtual {v1, v0, v2}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    goto :goto_18

    :cond_23
    :goto_17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4219
    iget-object v15, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v15, v2, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4220
    iget-object v2, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v2, v14, v11}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4221
    iget-object v2, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v2, v6, v1}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 4222
    iget-object v1, v7, Lo/getDescription;->onPostMessage:Lo/getFlags;

    invoke-virtual {v1, v0, v11}, Lo/getFlags;->onPostMessage(Lo/onSearchResult;F)V

    .line 3233
    :goto_18
    invoke-virtual {v10, v7}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    goto :goto_19

    :cond_24
    move-object/from16 v34, v1

    move/from16 v33, v6

    move-object/from16 v32, v7

    :goto_19
    move v15, v8

    move-object/from16 v14, v32

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v11, p2

    move-object/from16 v2, v16

    move/from16 v6, v33

    move-object/from16 v1, v34

    const/4 v7, 0x1

    goto/16 :goto_14

    :cond_25
    move-object/from16 v34, v1

    const/16 v17, 0x6

    const/16 v22, 0x4

    const/16 v25, 0x0

    if-eqz v4, :cond_2c

    if-eq v4, v3, :cond_26

    if-eqz v30, :cond_2c

    :cond_26
    move-object/from16 v0, v29

    .line 3255
    iget-object v1, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v9

    .line 3256
    iget-object v2, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v6, v9, 0x1

    aget-object v2, v2, v6

    .line 3257
    iget-object v7, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v9

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_27

    iget-object v0, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v9

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_1b

    :cond_27
    move-object/from16 v0, v24

    .line 3258
    :goto_1b
    iget-object v7, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v6

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_28

    iget-object v7, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v6

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_1c

    :cond_28
    move-object/from16 v7, v24

    :goto_1c
    if-ne v4, v3, :cond_29

    .line 3260
    iget-object v1, v4, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v9

    .line 3261
    iget-object v2, v4, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v6

    :cond_29
    if-eqz v0, :cond_2b

    if-eqz v7, :cond_2b

    if-nez p2, :cond_2a

    move-object/from16 v6, v26

    .line 3266
    iget v6, v6, Lo/removeSubscription;->getServiceComponent:F

    goto :goto_1d

    :cond_2a
    move-object/from16 v6, v26

    .line 3268
    iget v6, v6, Lo/removeSubscription;->isConnected:F

    .line 3270
    :goto_1d
    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v8

    .line 3271
    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v11

    .line 3272
    iget-object v12, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v13, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v14, 0x5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v12, v3

    move-object v3, v0

    move-object v15, v4

    move v4, v8

    move-object v0, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v13

    move/from16 v13, v20

    move v8, v11

    move v11, v9

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_1e

    :cond_2b
    move-object v12, v3

    move-object v15, v4

    move-object v0, v5

    move v11, v9

    move/from16 v13, v20

    :goto_1e
    move-object v14, v0

    goto/16 :goto_38

    :cond_2c
    move-object v12, v3

    move-object v15, v4

    move-object v14, v5

    move v11, v9

    move/from16 v13, v20

    move-object/from16 v0, v29

    if-eqz v21, :cond_3e

    if-eqz v15, :cond_3e

    move-object/from16 v1, v34

    .line 3279
    iget v2, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    if-lez v2, :cond_2d

    iget v2, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onRelationshipValidationResult:I

    iget v1, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    if-ne v2, v1, :cond_2d

    const/16 v19, 0x1

    goto :goto_1f

    :cond_2d
    const/16 v19, 0x0

    :goto_1f
    move-object v8, v15

    move-object v9, v8

    :goto_20
    if-eqz v9, :cond_4e

    .line 3281
    iget-object v1, v9, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v1, v1, p2

    move-object v7, v1

    :goto_21
    if-eqz v7, :cond_2e

    .line 4643
    iget v1, v7, Lo/removeSubscription;->getExtras:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 3283
    iget-object v1, v7, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v7, v1, p2

    goto :goto_21

    :cond_2e
    if-nez v7, :cond_30

    if-ne v9, v12, :cond_2f

    goto :goto_23

    :cond_2f
    move-object/from16 v35, v0

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    move-object v0, v9

    :goto_22
    const/16 v16, 0x4

    goto/16 :goto_2a

    .line 3286
    :cond_30
    :goto_23
    iget-object v1, v9, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v11

    .line 3287
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3288
    iget-object v3, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_31

    iget-object v3, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_24

    :cond_31
    move-object/from16 v3, v24

    :goto_24
    if-eq v8, v9, :cond_32

    .line 3290
    iget-object v3, v8, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v4, v11, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_25

    :cond_32
    if-ne v9, v15, :cond_34

    if-ne v8, v9, :cond_34

    .line 3292
    iget-object v3, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v11

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_33

    iget-object v3, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v11

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_25

    :cond_33
    move-object/from16 v3, v24

    .line 3298
    :cond_34
    :goto_25
    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    .line 3299
    iget-object v4, v9, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v5, v11, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v4

    if-eqz v7, :cond_35

    .line 3302
    iget-object v6, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v11

    move-object/from16 v29, v0

    .line 3303
    iget-object v0, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    :goto_26
    move-object/from16 v16, v7

    goto :goto_27

    :cond_35
    move-object/from16 v29, v0

    .line 3306
    iget-object v0, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v5

    iget-object v6, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_36

    .line 3308
    iget-object v0, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_26

    :cond_36
    move-object/from16 v16, v7

    move-object/from16 v0, v24

    .line 3310
    :goto_27
    iget-object v7, v9, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v5

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    if-eqz v6, :cond_37

    .line 3314
    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    add-int/2addr v4, v6

    :cond_37
    if-eqz v8, :cond_38

    .line 3317
    iget-object v6, v8, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    add-int/2addr v1, v6

    :cond_38
    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3c

    if-eqz v0, :cond_3c

    if-eqz v7, :cond_3c

    if-ne v9, v15, :cond_39

    .line 3322
    iget-object v1, v15, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    :cond_39
    move v6, v1

    if-ne v9, v12, :cond_3a

    .line 3326
    iget-object v1, v12, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    move/from16 v18, v1

    goto :goto_28

    :cond_3a
    move/from16 v18, v4

    :goto_28
    if-eqz v19, :cond_3b

    const/16 v20, 0x6

    goto :goto_29

    :cond_3b
    const/16 v20, 0x4

    :goto_29
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v4, v6

    move-object/from16 v35, v29

    move-object v6, v0

    move-object/from16 v0, v16

    const/16 v16, 0x4

    move-object/from16 v22, v8

    move/from16 v8, v18

    move-object/from16 v18, v0

    move-object v0, v9

    move/from16 v9, v20

    .line 3332
    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_2a

    :cond_3c
    move-object/from16 v22, v8

    move-object v0, v9

    move-object/from16 v18, v16

    move-object/from16 v35, v29

    goto/16 :goto_22

    .line 5643
    :goto_2a
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3d

    move-object v8, v0

    goto :goto_2b

    :cond_3d
    move-object/from16 v8, v22

    :goto_2b
    move-object/from16 v9, v18

    move-object/from16 v0, v35

    const/16 v22, 0x4

    goto/16 :goto_20

    :cond_3e
    move-object/from16 v35, v0

    move-object/from16 v1, v34

    const/16 v16, 0x4

    if-eqz v27, :cond_4e

    if-eqz v15, :cond_4e

    .line 3346
    iget v0, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    if-lez v0, :cond_3f

    iget v0, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->onRelationshipValidationResult:I

    iget v1, v1, Lo/MediaBrowserCompat$SearchResultReceiver;->asBinder:I

    if-ne v0, v1, :cond_3f

    const/16 v19, 0x1

    goto :goto_2c

    :cond_3f
    const/16 v19, 0x0

    :goto_2c
    move-object v0, v15

    move-object v9, v0

    :goto_2d
    if-eqz v0, :cond_4b

    .line 3348
    iget-object v1, v0, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v1, v1, p2

    :goto_2e
    if-eqz v1, :cond_40

    .line 6643
    iget v2, v1, Lo/removeSubscription;->getExtras:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_40

    .line 3350
    iget-object v1, v1, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v1, v1, p2

    goto :goto_2e

    :cond_40
    if-eq v0, v15, :cond_49

    if-eq v0, v12, :cond_49

    if-eqz v1, :cond_49

    if-ne v1, v12, :cond_41

    move-object/from16 v8, v24

    goto :goto_2f

    :cond_41
    move-object v8, v1

    .line 3356
    :goto_2f
    iget-object v1, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v11

    .line 3357
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3359
    iget-object v3, v9, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v4, v11, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3363
    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    .line 3364
    iget-object v5, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v5

    if-eqz v8, :cond_43

    .line 3367
    iget-object v6, v8, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v11

    .line 3368
    iget-object v7, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v18, v7

    .line 3369
    iget-object v7, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_42

    iget-object v7, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_31

    :cond_42
    move-object/from16 v7, v24

    goto :goto_31

    .line 3371
    :cond_43
    iget-object v6, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v4

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_44

    .line 3373
    iget-object v7, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v18, v6

    goto :goto_30

    :cond_44
    move-object/from16 v18, v6

    move-object/from16 v7, v24

    .line 3375
    :goto_30
    iget-object v6, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v4

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v37, v7

    move-object v7, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v37

    :goto_31
    if-eqz v6, :cond_45

    .line 3379
    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    add-int/2addr v5, v6

    :cond_45
    move/from16 v20, v5

    if-eqz v9, :cond_46

    .line 3382
    iget-object v5, v9, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v4

    add-int/2addr v1, v4

    :cond_46
    move v4, v1

    if-eqz v19, :cond_47

    const/16 v22, 0x6

    goto :goto_32

    :cond_47
    const/16 v22, 0x4

    :goto_32
    if-eqz v2, :cond_48

    if-eqz v3, :cond_48

    if-eqz v18, :cond_48

    if-eqz v7, :cond_48

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object/from16 v6, v18

    move-object/from16 v18, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v22

    .line 3389
    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_33

    :cond_48
    move-object/from16 v18, v8

    move-object/from16 v20, v9

    :goto_33
    move-object/from16 v4, v18

    goto :goto_34

    :cond_49
    move-object/from16 v20, v9

    move-object v4, v1

    .line 7643
    :goto_34
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4a

    move-object v9, v0

    goto :goto_35

    :cond_4a
    move-object/from16 v9, v20

    :goto_35
    move-object v0, v4

    goto/16 :goto_2d

    .line 3399
    :cond_4b
    iget-object v0, v15, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v11

    move-object/from16 v1, v35

    .line 3400
    iget-object v1, v1, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v11

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 3401
    iget-object v2, v12, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v9, v11, 0x1

    aget-object v8, v2, v9

    .line 3402
    iget-object v2, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    iget-object v9, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_4d

    if-eq v15, v12, :cond_4c

    .line 3405
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v1, v0, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    goto :goto_36

    :cond_4c
    if-eqz v9, :cond_4d

    .line 3407
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v3, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v7, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 3408
    invoke-virtual {v8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v0

    const/16 v16, 0x5

    move-object/from16 v1, p1

    move-object/from16 v36, v8

    move v8, v0

    move-object v0, v9

    move/from16 v9, v16

    .line 3407
    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    goto :goto_37

    :cond_4d
    :goto_36
    move-object/from16 v36, v8

    move-object v0, v9

    :goto_37
    if-eqz v0, :cond_4e

    if-eq v15, v12, :cond_4e

    move-object/from16 v1, v36

    .line 3412
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v1

    neg-int v1, v1

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v0, v1, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    :cond_4e
    :goto_38
    if-nez v21, :cond_4f

    if-eqz v27, :cond_56

    :cond_4f
    if-eqz v15, :cond_56

    .line 3419
    iget-object v0, v15, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v11

    .line 3420
    iget-object v1, v12, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v9, v11, 0x1

    aget-object v1, v1, v9

    .line 3421
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_50

    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object v3, v2

    goto :goto_39

    :cond_50
    move-object/from16 v3, v24

    .line 3422
    :goto_39
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_51

    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    goto :goto_3a

    :cond_51
    move-object/from16 v2, v24

    :goto_3a
    if-eq v14, v12, :cond_53

    .line 3424
    iget-object v2, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    .line 3425
    iget-object v4, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v4, :cond_52

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    move-object/from16 v24, v2

    :cond_52
    move-object/from16 v6, v24

    goto :goto_3b

    :cond_53
    move-object v6, v2

    :goto_3b
    if-ne v15, v12, :cond_54

    .line 3428
    iget-object v0, v15, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v0, v11

    .line 3429
    iget-object v1, v15, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v9

    :cond_54
    if-eqz v3, :cond_56

    if-eqz v6, :cond_56

    .line 3433
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v4

    if-nez v12, :cond_55

    move-object v5, v14

    goto :goto_3c

    :cond_55
    move-object v5, v12

    .line 3438
    :goto_3c
    iget-object v2, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v8

    .line 3439
    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v7, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lo/isPlayable;->ICustomTabsCallback(Lo/onSearchResult;Lo/onSearchResult;IFLo/onSearchResult;Lo/onSearchResult;II)V

    :cond_56
    :goto_3d
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v0, p0

    move v9, v11

    move/from16 v14, v23

    move-object/from16 v15, v28

    move/from16 v11, p2

    goto/16 :goto_1

    :cond_57
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 8035
    new-instance v0, Lo/setCheckable;

    invoke-direct {v0, p1, p2, p0}, Lo/setCheckable;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/MediaBrowserCompat$MediaItem$Flags;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeGroup{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$Flags;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$Flags;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
