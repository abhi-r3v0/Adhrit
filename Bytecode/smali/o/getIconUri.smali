.class public final Lo/getIconUri;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIconUri$onMessageChannelReady;,
        Lo/getIconUri$onNavigationEvent;,
        Lo/getIconUri$extraCallback;,
        Lo/getIconUri$onPostMessage;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

.field public static final synthetic $SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

.field public static final synthetic $SwitchMap$com$google$firestore$v1$Write$OperationCase:[I


# instance fields
.field public extraCallback:I

.field public onMessageChannelReady:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1843
    invoke-static {}, Lo/writeFixed64$onMessageChannelReady;->values()[Lo/writeFixed64$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/writeFixed64$onMessageChannelReady;->ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v3, Lo/writeFixed64$onMessageChannelReady;->onNavigationEvent:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v4, Lo/writeFixed64$onMessageChannelReady;->onPostMessage:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v5, Lo/writeFixed64$onMessageChannelReady;->extraCallback:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v6, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    sget-object v7, Lo/writeFixed64$onMessageChannelReady;->asBinder:Lo/writeFixed64$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 1848
    :catch_5
    invoke-static {}, Lo/writeUInt32$extraCallback;->values()[Lo/writeUInt32$extraCallback;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    :try_start_6
    sget-object v7, Lo/writeUInt32$extraCallback;->onNavigationEvent:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lo/writeUInt32$extraCallback;->ICustomTabsCallback:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lo/writeUInt32$extraCallback;->onMessageChannelReady:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lo/writeUInt32$extraCallback;->onPostMessage:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lo/writeUInt32$extraCallback;->extraCallback:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    sget-object v7, Lo/writeUInt32$extraCallback;->onRelationshipValidationResult:Lo/writeUInt32$extraCallback;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 1812
    :catch_b
    invoke-static {}, Lo/writeEnum$onNavigationEvent;->values()[Lo/writeEnum$onNavigationEvent;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    :try_start_c
    sget-object v7, Lo/writeEnum$onNavigationEvent;->extraCallback:Lo/writeEnum$onNavigationEvent;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    sget-object v7, Lo/writeEnum$onNavigationEvent;->onPostMessage:Lo/writeEnum$onNavigationEvent;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 1770
    :catch_d
    invoke-static {}, Lo/writeEnum$extraCallback$onMessageChannelReady;->values()[Lo/writeEnum$extraCallback$onMessageChannelReady;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    :try_start_e
    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v7, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/4 v6, 0x7

    :try_start_14
    sget-object v7, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v8, Lo/writeEnum$extraCallback$onMessageChannelReady;->onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/16 v7, 0x8

    :try_start_15
    sget-object v8, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v9, Lo/writeEnum$extraCallback$onMessageChannelReady;->onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    const/16 v8, 0x9

    :try_start_16
    sget-object v9, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v10, Lo/writeEnum$extraCallback$onMessageChannelReady;->asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    const/16 v9, 0xa

    :try_start_17
    sget-object v10, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    sget-object v11, Lo/writeEnum$extraCallback$onMessageChannelReady;->asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 1742
    :catch_17
    invoke-static {}, Lo/isCrashed$onNavigationEvent;->values()[Lo/isCrashed$onNavigationEvent;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    :try_start_18
    sget-object v11, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v10, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v11, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v10, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v11, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v10, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v11, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v10, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v11, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v10, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v5, v4, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v5, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v5, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v5, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v8, v4, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v5, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v9, v4, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 1722
    :catch_21
    invoke-static {}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->values()[Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    :try_start_22
    sget-object v5, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    sget-object v5, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    .line 1666
    :catch_25
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->values()[Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    :try_start_26
    sget-object v5, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    sget-object v5, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->ICustomTabsCallback:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    sget-object v5, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onNavigationEvent:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    .line 1478
    :catch_28
    invoke-static {}, Lo/getBinaries;->values()[Lo/getBinaries;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    :try_start_29
    sget-object v5, Lo/getBinaries;->LISTEN:Lo/getBinaries;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    sget-object v5, Lo/getBinaries;->EXISTENCE_FILTER_MISMATCH:Lo/getBinaries;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    sget-object v5, Lo/getBinaries;->LIMBO_RESOLUTION:Lo/getBinaries;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 1411
    :catch_2b
    invoke-static {}, Lo/writeInt64$onPostMessage$extraCallback;->values()[Lo/writeInt64$onPostMessage$extraCallback;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    :try_start_2c
    sget-object v5, Lo/writeInt64$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$extraCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lo/writeInt64$onPostMessage$extraCallback;->onPostMessage:Lo/writeInt64$onPostMessage$extraCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lo/writeInt64$onPostMessage$extraCallback;->onMessageChannelReady:Lo/writeInt64$onPostMessage$extraCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    sget-object v5, Lo/writeInt64$onPostMessage$extraCallback;->extraCallback:Lo/writeInt64$onPostMessage$extraCallback;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 1350
    :catch_2f
    invoke-static {}, Lo/writeSFixed32$onPostMessage;->values()[Lo/writeSFixed32$onPostMessage;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    :try_start_30
    sget-object v5, Lo/writeSFixed32$onPostMessage;->onMessageChannelReady:Lo/writeSFixed32$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    sget-object v5, Lo/writeSFixed32$onPostMessage;->onNavigationEvent:Lo/writeSFixed32$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    sget-object v5, Lo/writeSFixed32$onPostMessage;->ICustomTabsCallback:Lo/writeSFixed32$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 1298
    :catch_32
    invoke-static {}, Lo/writeSInt32$onMessageChannelReady;->values()[Lo/writeSInt32$onMessageChannelReady;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    :try_start_33
    sget-object v5, Lo/writeSInt32$onMessageChannelReady;->onPostMessage:Lo/writeSInt32$onMessageChannelReady;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v1, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    sget-object v4, Lo/writeSInt32$onMessageChannelReady;->onMessageChannelReady:Lo/writeSInt32$onMessageChannelReady;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    sget-object v1, Lo/writeSInt32$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSInt32$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    sget-object v1, Lo/writeSInt32$onMessageChannelReady;->extraCallback:Lo/writeSInt32$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
