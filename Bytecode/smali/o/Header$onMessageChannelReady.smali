.class public final Lo/Header$onMessageChannelReady;
.super Lo/InstrumentAction;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/Header$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/Header$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:Z

.field public final ICustomTabsCallback$Stub$Proxy:Z

.field public final ICustomTabsService:Z

.field public final ICustomTabsService$Stub$Proxy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final INotificationSideChannel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final IPostMessageService$Stub:I

.field public final asBinder:I

.field public final asInterface:Z

.field public final extraCallback:I

.field public final extraCommand:Z

.field private final getDefaultImpl:Landroid/util/SparseBooleanArray;

.field public final getInterfaceDescriptor:Z

.field public final mayLaunchUrl:Z

.field public final newSession:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:Z

.field public final postMessage:Z

.field public final requestPostMessageChannel:Z

.field public final updateVisuals:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final validateRelationship:Z

.field public final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 739
    new-instance v0, Lo/Header$onMessageChannelReady;

    invoke-direct {v0}, Lo/Header$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/Header$onMessageChannelReady;->onPostMessage:Lo/Header$onMessageChannelReady;

    .line 1165
    new-instance v0, Lo/Header$onMessageChannelReady$5;

    invoke-direct {v0}, Lo/Header$onMessageChannelReady$5;-><init>()V

    sput-object v0, Lo/Header$onMessageChannelReady;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    .line 879
    sget-object v1, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    iget-object v11, v1, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    sget-object v1, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    iget-object v1, v1, Lo/InstrumentAction;->notify:Ljava/lang/String;

    move-object/from16 v18, v1

    sget-object v1, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    iget v1, v1, Lo/InstrumentAction;->cancel:I

    move/from16 v19, v1

    sget-object v1, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    iget-boolean v1, v1, Lo/InstrumentAction;->cancelAll:Z

    move/from16 v20, v1

    sget-object v1, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    iget v1, v1, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    move/from16 v21, v1

    new-instance v1, Landroid/util/SparseArray;

    move-object/from16 v26, v1

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v1

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const/4 v10, 0x1

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v27}, Lo/Header$onMessageChannelReady;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;IZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method constructor <init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;IZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZZIIZ",
            "Ljava/lang/String;",
            "IIZZZZ",
            "Ljava/lang/String;",
            "IZIZZZI",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move v7, p6

    move/from16 v8, p7

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p18

    move/from16 v3, p19

    move/from16 v4, p20

    move/from16 v5, p21

    .line 946
    invoke-direct/range {v0 .. v5}, Lo/InstrumentAction;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    move v0, p1

    .line 953
    iput v0, v6, Lo/Header$onMessageChannelReady;->extraCallback:I

    move v0, p2

    .line 954
    iput v0, v6, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    move v0, p3

    .line 955
    iput v0, v6, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    move v0, p4

    .line 956
    iput v0, v6, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    move v0, p5

    .line 957
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 958
    iput-boolean v7, v6, Lo/Header$onMessageChannelReady;->onTransact:Z

    .line 959
    iput-boolean v8, v6, Lo/Header$onMessageChannelReady;->asInterface:Z

    move/from16 v0, p8

    .line 960
    iput v0, v6, Lo/Header$onMessageChannelReady;->asBinder:I

    move/from16 v0, p9

    .line 961
    iput v0, v6, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    move/from16 v0, p10

    .line 962
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    move/from16 v0, p12

    .line 964
    iput v0, v6, Lo/Header$onMessageChannelReady;->warmup:I

    move/from16 v0, p13

    .line 965
    iput v0, v6, Lo/Header$onMessageChannelReady;->newSession:I

    move/from16 v0, p14

    .line 966
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    move/from16 v0, p15

    .line 967
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    move/from16 v0, p16

    .line 968
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    move/from16 v0, p17

    .line 969
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->postMessage:Z

    move/from16 v0, p22

    .line 971
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->extraCommand:Z

    move/from16 v0, p23

    .line 972
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    move/from16 v0, p24

    .line 973
    iput-boolean v0, v6, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    move/from16 v0, p25

    .line 974
    iput v0, v6, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    .line 976
    iput-boolean v7, v6, Lo/Header$onMessageChannelReady;->updateVisuals:Z

    .line 977
    iput-boolean v8, v6, Lo/Header$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    move-object/from16 v0, p26

    .line 979
    iput-object v0, v6, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    move-object/from16 v0, p27

    .line 980
    iput-object v0, v6, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 985
    invoke-direct {p0, p1}, Lo/InstrumentAction;-><init>(Landroid/os/Parcel;)V

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->extraCallback:I

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    .line 991
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 992
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->onTransact:Z

    .line 993
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->asInterface:Z

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->asBinder:I

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 996
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->warmup:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->newSession:I

    .line 1000
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    .line 1001
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    .line 1002
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    .line 1003
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->postMessage:Z

    .line 1005
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->extraCommand:Z

    .line 1006
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    .line 1007
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    .line 1010
    invoke-static {p1}, Lo/Header$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    .line 1013
    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->onTransact:Z

    iput-boolean p1, p0, Lo/Header$onMessageChannelReady;->updateVisuals:Z

    .line 1014
    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->asInterface:Z

    iput-boolean p1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;"
        }
    .end annotation

    .line 1183
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1184
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1187
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1189
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 1191
    const-class v8, Lo/JuspaySessionToken;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lo/JuspaySessionToken;

    .line 1192
    const-class v9, Lo/Header$onPostMessage;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lo/Header$onPostMessage;

    .line 1193
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1195
    :cond_0
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static ICustomTabsCallback(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1219
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1220
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1225
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static extraCallback(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;)Z"
        }
    .end annotation

    .line 1253
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1254
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 1257
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/JuspaySessionToken;

    .line 1259
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static onPostMessage(Landroid/os/Parcel;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1202
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1203
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1205
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1206
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1207
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 1208
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1212
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static onPostMessage(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lo/JuspaySessionToken;",
            "Lo/Header$onPostMessage;",
            ">;>;)Z"
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1236
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1240
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1243
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1242
    invoke-static {v4, v3}, Lo/Header$onMessageChannelReady;->extraCallback(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1063
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 1066
    :cond_1
    move-object v2, p1

    check-cast v2, Lo/Header$onMessageChannelReady;

    .line 1067
    invoke-super {p0, p1}, Lo/InstrumentAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->extraCallback:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->extraCallback:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->onTransact:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->onTransact:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->asInterface:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->asInterface:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->asBinder:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->asBinder:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->warmup:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->warmup:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->newSession:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->newSession:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->postMessage:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->postMessage:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->extraCommand:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->extraCommand:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    iget-boolean v3, v2, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    if-ne p1, v3, :cond_2

    iget p1, p0, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    iget v3, v2, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    iget-object v3, v2, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    .line 1093
    invoke-static {p1, v3}, Lo/Header$onMessageChannelReady;->ICustomTabsCallback(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    iget-object v2, v2, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    .line 1094
    invoke-static {p1, v2}, Lo/Header$onMessageChannelReady;->onPostMessage(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(ILo/JuspaySessionToken;)Lo/Header$onPostMessage;
    .locals 1

    .line 1048
    iget-object v0, p0, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 1049
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Header$onPostMessage;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1099
    invoke-super {p0}, Lo/InstrumentAction;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1101
    iget v1, p0, Lo/Header$onMessageChannelReady;->extraCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1102
    iget v1, p0, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1103
    iget v1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1104
    iget v1, p0, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1105
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1106
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->onTransact:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1107
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->asInterface:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1108
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1109
    iget v1, p0, Lo/Header$onMessageChannelReady;->asBinder:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1110
    iget v1, p0, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1112
    iget v1, p0, Lo/Header$onMessageChannelReady;->warmup:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1113
    iget v1, p0, Lo/Header$onMessageChannelReady;->newSession:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1114
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1115
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1116
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1117
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->postMessage:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1119
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->extraCommand:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1120
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1121
    iget-boolean v1, p0, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1122
    iget v1, p0, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(I)Z
    .locals 1

    .line 1024
    iget-object v0, p0, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(ILo/JuspaySessionToken;)Z
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 1036
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1136
    invoke-super {p0, p1, p2}, Lo/InstrumentAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1138
    iget p2, p0, Lo/Header$onMessageChannelReady;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    iget p2, p0, Lo/Header$onMessageChannelReady;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    iget p2, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    iget p2, p0, Lo/Header$onMessageChannelReady;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1143
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->onTransact:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1144
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->asInterface:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1145
    iget p2, p0, Lo/Header$onMessageChannelReady;->asBinder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    iget p2, p0, Lo/Header$onMessageChannelReady;->onRelationshipValidationResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->ICustomTabsService:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1149
    iget p2, p0, Lo/Header$onMessageChannelReady;->warmup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget p2, p0, Lo/Header$onMessageChannelReady;->newSession:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1152
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->getInterfaceDescriptor:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1153
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->mayLaunchUrl:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1154
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->postMessage:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1156
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->extraCommand:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1157
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->requestPostMessageChannel:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1158
    iget-boolean p2, p0, Lo/Header$onMessageChannelReady;->validateRelationship:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1159
    iget p2, p0, Lo/Header$onMessageChannelReady;->IPostMessageService$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    iget-object p2, p0, Lo/Header$onMessageChannelReady;->INotificationSideChannel:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lo/Header$onMessageChannelReady;->onPostMessage(Landroid/os/Parcel;Landroid/util/SparseArray;)V

    .line 1162
    iget-object p2, p0, Lo/Header$onMessageChannelReady;->getDefaultImpl:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
