.class public final Lo/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:I

.field public final ICustomTabsCallback$Stub$Proxy:J

.field public final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final ICustomTabsService$Stub:I

.field public final ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

.field public final INotificationSideChannel:I

.field public final IPostMessageService:I

.field public final IPostMessageService$Stub:I

.field public final IPostMessageService$Stub$Proxy:I

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:Lo/callAPI;

.field public final cancel:Ljava/lang/String;

.field public final extraCallback:I

.field public final extraCommand:F

.field public final getInterfaceDescriptor:I

.field public final mayLaunchUrl:[B

.field public final newSession:I

.field private notify:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/lang/String;

.field public final onTransact:Ljava/lang/String;

.field public final postMessage:I

.field public final requestPostMessageChannel:I

.field public final updateVisuals:F

.field public final validateRelationship:I

.field public final warmup:Lo/generateLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1619
    new-instance v0, Lo/p$a$3;

    invoke-direct {v0}, Lo/p$a$3;-><init>()V

    sput-object v0, Lo/p$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->onMessageChannelReady:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->ICustomTabsCallback:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->extraCallback:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 971
    const-class v0, Lo/callAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/callAPI;

    iput-object v0, p0, Lo/p$a;->asInterface:Lo/callAPI;

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->ICustomTabsCallback$Stub:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 980
    iget-object v2, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_0
    const-class v0, Lo/generateLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/generateLink;

    iput-object v0, p0, Lo/p$a;->warmup:Lo/generateLink;

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->getInterfaceDescriptor:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->newSession:I

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/p$a;->updateVisuals:F

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->postMessage:I

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/p$a;->extraCommand:F

    .line 990
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lo/p$a;->mayLaunchUrl:[B

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->requestPostMessageChannel:I

    .line 993
    const-class v0, Lo/getRewardDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/getRewardDetails;

    iput-object v0, p0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->ICustomTabsService$Stub:I

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->validateRelationship:I

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->IPostMessageService:I

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->IPostMessageService$Stub:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/p$a;->cancel:Ljava/lang/String;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/p$a;->INotificationSideChannel:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lo/callAPI;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Lo/generateLink;",
            "JIIFIF[BI",
            "Lo/getRewardDetails;",
            "IIIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 926
    iput-object v1, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    move-object v1, p2

    .line 927
    iput-object v1, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    move v1, p3

    .line 928
    iput v1, v0, Lo/p$a;->onMessageChannelReady:I

    move v1, p4

    .line 929
    iput v1, v0, Lo/p$a;->ICustomTabsCallback:I

    move v1, p5

    .line 930
    iput v1, v0, Lo/p$a;->extraCallback:I

    move-object v1, p6

    .line 931
    iput-object v1, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    move-object v1, p7

    .line 932
    iput-object v1, v0, Lo/p$a;->asInterface:Lo/callAPI;

    move-object v1, p8

    .line 934
    iput-object v1, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v1, p9

    .line 936
    iput-object v1, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    move v1, p10

    .line 937
    iput v1, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    if-nez p11, :cond_0

    .line 939
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p11

    :goto_0
    iput-object v1, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    move-object/from16 v1, p12

    .line 940
    iput-object v1, v0, Lo/p$a;->warmup:Lo/generateLink;

    move-wide/from16 v1, p13

    .line 941
    iput-wide v1, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v1, p15

    .line 943
    iput v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v1, p16

    .line 944
    iput v1, v0, Lo/p$a;->newSession:I

    move/from16 v1, p17

    .line 945
    iput v1, v0, Lo/p$a;->updateVisuals:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    .line 946
    :cond_1
    iput v3, v0, Lo/p$a;->postMessage:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move/from16 v3, p19

    .line 947
    :goto_1
    iput v3, v0, Lo/p$a;->extraCommand:F

    move-object/from16 v3, p20

    .line 949
    iput-object v3, v0, Lo/p$a;->mayLaunchUrl:[B

    move/from16 v3, p21

    .line 950
    iput v3, v0, Lo/p$a;->requestPostMessageChannel:I

    move-object/from16 v3, p22

    .line 951
    iput-object v3, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move/from16 v3, p23

    .line 953
    iput v3, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v3, p24

    .line 954
    iput v3, v0, Lo/p$a;->validateRelationship:I

    move/from16 v3, p25

    .line 955
    iput v3, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    .line 956
    :cond_3
    iput v3, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_4

    const/4 v3, 0x0

    .line 957
    :cond_4
    iput v3, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    .line 959
    invoke-static/range {p28 .. p28}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/p$a;->cancel:Ljava/lang/String;

    move/from16 v1, p29

    .line 960
    iput v1, v0, Lo/p$a;->INotificationSideChannel:I

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILo/getRewardDetails;Lo/generateLink;)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lo/getRewardDetails;",
            "Lo/generateLink;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v11, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v12, p14

    .line 321
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lo/generateLink;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 471
    invoke-static/range {v0 .. v14}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;Lo/callAPI;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIILjava/util/List;IILjava/lang/String;)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/callAPI;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move-object/from16 v11, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v28, p12

    .line 400
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 11

    .line 627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 617
    invoke-static/range {v0 .. v10}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLo/generateLink;)Lo/p$a;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lo/generateLink;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 287
    invoke-static/range {v0 .. v14}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILo/getRewardDetails;Lo/generateLink;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;Lo/callAPI;)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lo/generateLink;",
            "I",
            "Ljava/lang/String;",
            "Lo/callAPI;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v3, p12

    move-object/from16 v28, p13

    move-object/from16 v7, p14

    .line 505
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lo/generateLink;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 443
    invoke-static/range {v0 .. v11}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lo/p$a;
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 548
    invoke-static/range {v0 .. v9}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)Lo/p$a;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v13, p2

    .line 824
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lo/generateLink;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v28, p5

    move/from16 v29, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move-object/from16 v11, p10

    .line 685
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    .line 861
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lo/p$a;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    move/from16 v29, p9

    .line 572
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIFLjava/util/List;II)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/callAPI;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v11, p10

    move/from16 v3, p11

    move/from16 v4, p12

    .line 217
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lo/p$a;
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-static {p0, p1, p2, p3, v0}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lo/generateLink;J)Lo/p$a;
    .locals 11

    .line 671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 661
    invoke-static/range {v0 .. v10}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ")",
            "Lo/p$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v28, p6

    move-object/from16 v12, p7

    .line 727
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lo/p$a;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    .line 791
    new-instance v30, Lo/p$a;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v30
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIIILjava/lang/String;)Lo/p$a;
    .locals 32

    move-object/from16 v0, p0

    .line 1082
    iget-object v1, v0, Lo/p$a;->asInterface:Lo/callAPI;

    move-object/from16 v2, p5

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v1, v2}, Lo/callAPI;->onMessageChannelReady(Lo/callAPI;)Lo/callAPI;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v2

    .line 1086
    :goto_0
    new-instance v1, Lo/p$a;

    move-object v2, v1

    iget v6, v0, Lo/p$a;->ICustomTabsCallback:I

    iget-object v10, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget v12, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v13, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    iget-object v14, v0, Lo/p$a;->warmup:Lo/generateLink;

    iget-wide v3, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move-wide v15, v3

    iget v3, v0, Lo/p$a;->updateVisuals:F

    move/from16 v19, v3

    iget v3, v0, Lo/p$a;->postMessage:I

    move/from16 v20, v3

    iget v3, v0, Lo/p$a;->extraCommand:F

    move/from16 v21, v3

    iget-object v3, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v22, v3

    iget v3, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v23, v3

    iget-object v3, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v24, v3

    iget v3, v0, Lo/p$a;->validateRelationship:I

    move/from16 v26, v3

    iget v3, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v27, v3

    iget v3, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v28, v3

    iget v3, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    move/from16 v29, v3

    iget v3, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v31, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p10

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v11, p3

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v25, p9

    move-object/from16 v30, p11

    invoke-direct/range {v2 .. v31}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v1
.end method

.method public final ICustomTabsCallback(Lo/callAPI;)Lo/p$a;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1293
    new-instance v31, Lo/p$a;

    move-object/from16 v1, v31

    iget-object v2, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget v4, v0, Lo/p$a;->onMessageChannelReady:I

    iget v5, v0, Lo/p$a;->ICustomTabsCallback:I

    iget v6, v0, Lo/p$a;->extraCallback:I

    iget-object v7, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    iget-object v9, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v10, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v11, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v12, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    iget-object v13, v0, Lo/p$a;->warmup:Lo/generateLink;

    iget-wide v14, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move-object/from16 p1, v1

    iget v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v16, v1

    iget v1, v0, Lo/p$a;->newSession:I

    move/from16 v17, v1

    iget v1, v0, Lo/p$a;->updateVisuals:F

    move/from16 v18, v1

    iget v1, v0, Lo/p$a;->postMessage:I

    move/from16 v19, v1

    iget v1, v0, Lo/p$a;->extraCommand:F

    move/from16 v20, v1

    iget-object v1, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v21, v1

    iget v1, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v22, v1

    iget-object v1, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v23, v1

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v24, v1

    iget v1, v0, Lo/p$a;->validateRelationship:I

    move/from16 v25, v1

    iget v1, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v26, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v27, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    move/from16 v28, v1

    iget-object v1, v0, Lo/p$a;->cancel:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public final ICustomTabsCallback(Lo/p$a;)Lo/p$a;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 1124
    :cond_0
    iget-object v2, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {v2}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result v2

    .line 1127
    iget-object v4, v1, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    .line 1130
    iget-object v3, v1, Lo/p$a;->onPostMessage:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    .line 1131
    iget-object v3, v0, Lo/p$a;->cancel:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    .line 1132
    :cond_2
    iget-object v6, v1, Lo/p$a;->cancel:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object/from16 v31, v6

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    .line 1138
    :goto_1
    iget v3, v0, Lo/p$a;->extraCallback:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    iget v3, v1, Lo/p$a;->extraCallback:I

    :cond_4
    move v8, v3

    .line 1139
    iget-object v3, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1143
    iget-object v6, v1, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v6, v2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1144
    invoke-static {v6}, Lo/ThirdPartyAuthorizeRequest;->onRelationshipValidationResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_5

    move-object v9, v6

    goto :goto_2

    :cond_5
    move-object v9, v3

    .line 1149
    :goto_2
    iget-object v3, v0, Lo/p$a;->asInterface:Lo/callAPI;

    if-nez v3, :cond_6

    iget-object v3, v1, Lo/p$a;->asInterface:Lo/callAPI;

    goto :goto_3

    :cond_6
    iget-object v6, v1, Lo/p$a;->asInterface:Lo/callAPI;

    .line 1152
    invoke-virtual {v3, v6}, Lo/callAPI;->onMessageChannelReady(Lo/callAPI;)Lo/callAPI;

    move-result-object v3

    :goto_3
    move-object v10, v3

    .line 1154
    iget v3, v0, Lo/p$a;->updateVisuals:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_7

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 1156
    iget v2, v1, Lo/p$a;->updateVisuals:F

    move/from16 v20, v2

    goto :goto_4

    :cond_7
    move/from16 v20, v3

    .line 1160
    :goto_4
    iget v2, v0, Lo/p$a;->onMessageChannelReady:I

    iget v3, v1, Lo/p$a;->onMessageChannelReady:I

    or-int v6, v2, v3

    .line 1161
    iget v2, v0, Lo/p$a;->ICustomTabsCallback:I

    iget v3, v1, Lo/p$a;->ICustomTabsCallback:I

    or-int v7, v2, v3

    .line 1162
    iget-object v1, v1, Lo/p$a;->warmup:Lo/generateLink;

    iget-object v2, v0, Lo/p$a;->warmup:Lo/generateLink;

    .line 1163
    invoke-static {v1, v2}, Lo/generateLink;->extraCallback(Lo/generateLink;Lo/generateLink;)Lo/generateLink;

    move-result-object v15

    .line 1165
    new-instance v1, Lo/p$a;

    move-object v3, v1

    iget-object v11, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v12, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v13, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v14, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    move-object/from16 p1, v1

    iget-wide v1, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move-wide/from16 v16, v1

    iget v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v18, v1

    iget v1, v0, Lo/p$a;->newSession:I

    move/from16 v19, v1

    iget v1, v0, Lo/p$a;->postMessage:I

    move/from16 v21, v1

    iget v1, v0, Lo/p$a;->extraCommand:F

    move/from16 v22, v1

    iget-object v1, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v23, v1

    iget v1, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v24, v1

    iget-object v1, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v25, v1

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v26, v1

    iget v1, v0, Lo/p$a;->validateRelationship:I

    move/from16 v27, v1

    iget v1, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v28, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v29, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    move/from16 v30, v1

    iget v1, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v32, v1

    invoke-direct/range {v3 .. v32}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 1477
    :cond_1
    check-cast p1, Lo/p$a;

    .line 1478
    iget v2, p0, Lo/p$a;->notify:I

    if-eqz v2, :cond_2

    iget v3, p1, Lo/p$a;->notify:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 1482
    :cond_2
    iget v2, p0, Lo/p$a;->onMessageChannelReady:I

    iget v3, p1, Lo/p$a;->onMessageChannelReady:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->ICustomTabsCallback:I

    iget v3, p1, Lo/p$a;->ICustomTabsCallback:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->extraCallback:I

    iget v3, p1, Lo/p$a;->extraCallback:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget v3, p1, Lo/p$a;->ICustomTabsCallback$Stub:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v4, p1, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lo/p$a;->getInterfaceDescriptor:I

    iget v3, p1, Lo/p$a;->getInterfaceDescriptor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->newSession:I

    iget v3, p1, Lo/p$a;->newSession:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->postMessage:I

    iget v3, p1, Lo/p$a;->postMessage:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->requestPostMessageChannel:I

    iget v3, p1, Lo/p$a;->requestPostMessageChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    iget v3, p1, Lo/p$a;->ICustomTabsService$Stub:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->validateRelationship:I

    iget v3, p1, Lo/p$a;->validateRelationship:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->IPostMessageService:I

    iget v3, p1, Lo/p$a;->IPostMessageService:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->IPostMessageService$Stub:I

    iget v3, p1, Lo/p$a;->IPostMessageService$Stub:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    iget v3, p1, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->INotificationSideChannel:I

    iget v3, p1, Lo/p$a;->INotificationSideChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lo/p$a;->updateVisuals:F

    iget v3, p1, Lo/p$a;->updateVisuals:F

    .line 1497
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lo/p$a;->extraCommand:F

    iget v3, p1, Lo/p$a;->extraCommand:F

    .line 1498
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    .line 1499
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->onPostMessage:Ljava/lang/String;

    .line 1500
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 1501
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1502
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1503
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->cancel:Ljava/lang/String;

    iget-object v3, p1, Lo/p$a;->cancel:Ljava/lang/String;

    .line 1504
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->mayLaunchUrl:[B

    iget-object v3, p1, Lo/p$a;->mayLaunchUrl:[B

    .line 1505
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->asInterface:Lo/callAPI;

    iget-object v3, p1, Lo/p$a;->asInterface:Lo/callAPI;

    .line 1506
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    iget-object v3, p1, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    .line 1507
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/p$a;->warmup:Lo/generateLink;

    iget-object v3, p1, Lo/p$a;->warmup:Lo/generateLink;

    .line 1508
    invoke-static {v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1509
    invoke-virtual {p0, p1}, Lo/p$a;->onPostMessage(Lo/p$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final extraCallback(II)Lo/p$a;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v27, p1

    move/from16 v28, p2

    .line 1197
    new-instance v31, Lo/p$a;

    move-object/from16 v1, v31

    iget-object v2, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget v4, v0, Lo/p$a;->onMessageChannelReady:I

    iget v5, v0, Lo/p$a;->ICustomTabsCallback:I

    iget v6, v0, Lo/p$a;->extraCallback:I

    iget-object v7, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    iget-object v8, v0, Lo/p$a;->asInterface:Lo/callAPI;

    iget-object v9, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v10, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v11, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v12, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    iget-object v13, v0, Lo/p$a;->warmup:Lo/generateLink;

    iget-wide v14, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move-object/from16 p1, v1

    iget v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v16, v1

    iget v1, v0, Lo/p$a;->newSession:I

    move/from16 v17, v1

    iget v1, v0, Lo/p$a;->updateVisuals:F

    move/from16 v18, v1

    iget v1, v0, Lo/p$a;->postMessage:I

    move/from16 v19, v1

    iget v1, v0, Lo/p$a;->extraCommand:F

    move/from16 v20, v1

    iget-object v1, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v21, v1

    iget v1, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v22, v1

    iget-object v1, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v23, v1

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v24, v1

    iget v1, v0, Lo/p$a;->validateRelationship:I

    move/from16 v25, v1

    iget v1, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v26, v1

    iget-object v1, v0, Lo/p$a;->cancel:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public final hashCode()I
    .locals 4

    .line 1428
    iget v0, p0, Lo/p$a;->notify:I

    if-nez v0, :cond_7

    .line 1431
    iget-object v0, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 1432
    iget-object v2, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1433
    iget v2, p0, Lo/p$a;->onMessageChannelReady:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1434
    iget v2, p0, Lo/p$a;->ICustomTabsCallback:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1435
    iget v2, p0, Lo/p$a;->extraCallback:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1436
    iget-object v2, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1437
    iget-object v2, p0, Lo/p$a;->asInterface:Lo/callAPI;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1439
    iget-object v2, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1441
    iget-object v2, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1442
    iget v2, p0, Lo/p$a;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1445
    iget-wide v2, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1447
    iget v2, p0, Lo/p$a;->getInterfaceDescriptor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1448
    iget v2, p0, Lo/p$a;->newSession:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1449
    iget v2, p0, Lo/p$a;->updateVisuals:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1450
    iget v2, p0, Lo/p$a;->postMessage:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1451
    iget v2, p0, Lo/p$a;->extraCommand:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1453
    iget v2, p0, Lo/p$a;->requestPostMessageChannel:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1456
    iget v2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1457
    iget v2, p0, Lo/p$a;->validateRelationship:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1458
    iget v2, p0, Lo/p$a;->IPostMessageService:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1459
    iget v2, p0, Lo/p$a;->IPostMessageService$Stub:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1460
    iget v2, p0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1462
    iget-object v2, p0, Lo/p$a;->cancel:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1463
    iget v1, p0, Lo/p$a;->INotificationSideChannel:I

    add-int/2addr v0, v1

    .line 1464
    iput v0, p0, Lo/p$a;->notify:I

    .line 1466
    :cond_7
    iget v0, p0, Lo/p$a;->notify:I

    return v0
.end method

.method public final onMessageChannelReady(Lo/generateLink;)Lo/p$a;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 1261
    new-instance v31, Lo/p$a;

    move-object/from16 v1, v31

    iget-object v2, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget v4, v0, Lo/p$a;->onMessageChannelReady:I

    iget v5, v0, Lo/p$a;->ICustomTabsCallback:I

    iget v6, v0, Lo/p$a;->extraCallback:I

    iget-object v7, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    iget-object v8, v0, Lo/p$a;->asInterface:Lo/callAPI;

    iget-object v9, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v10, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v11, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v12, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    iget-wide v14, v0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    move-object/from16 p1, v1

    iget v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v16, v1

    iget v1, v0, Lo/p$a;->newSession:I

    move/from16 v17, v1

    iget v1, v0, Lo/p$a;->updateVisuals:F

    move/from16 v18, v1

    iget v1, v0, Lo/p$a;->postMessage:I

    move/from16 v19, v1

    iget v1, v0, Lo/p$a;->extraCommand:F

    move/from16 v20, v1

    iget-object v1, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v21, v1

    iget v1, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v22, v1

    iget-object v1, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v23, v1

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v24, v1

    iget v1, v0, Lo/p$a;->validateRelationship:I

    move/from16 v25, v1

    iget v1, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v26, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v27, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    move/from16 v28, v1

    iget-object v1, v0, Lo/p$a;->cancel:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public final onNavigationEvent()I
    .locals 3

    .line 1393
    iget v0, p0, Lo/p$a;->getInterfaceDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lo/p$a;->newSession:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final onPostMessage(J)Lo/p$a;
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    .line 1038
    new-instance v31, Lo/p$a;

    move-object/from16 v1, v31

    iget-object v2, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget v4, v0, Lo/p$a;->onMessageChannelReady:I

    iget v5, v0, Lo/p$a;->ICustomTabsCallback:I

    iget v6, v0, Lo/p$a;->extraCallback:I

    iget-object v7, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    iget-object v8, v0, Lo/p$a;->asInterface:Lo/callAPI;

    iget-object v9, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v10, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    iget v11, v0, Lo/p$a;->ICustomTabsCallback$Stub:I

    iget-object v12, v0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    iget-object v13, v0, Lo/p$a;->warmup:Lo/generateLink;

    move-object/from16 p1, v1

    iget v1, v0, Lo/p$a;->getInterfaceDescriptor:I

    move/from16 v16, v1

    iget v1, v0, Lo/p$a;->newSession:I

    move/from16 v17, v1

    iget v1, v0, Lo/p$a;->updateVisuals:F

    move/from16 v18, v1

    iget v1, v0, Lo/p$a;->postMessage:I

    move/from16 v19, v1

    iget v1, v0, Lo/p$a;->extraCommand:F

    move/from16 v20, v1

    iget-object v1, v0, Lo/p$a;->mayLaunchUrl:[B

    move-object/from16 v21, v1

    iget v1, v0, Lo/p$a;->requestPostMessageChannel:I

    move/from16 v22, v1

    iget-object v1, v0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    move-object/from16 v23, v1

    iget v1, v0, Lo/p$a;->ICustomTabsService$Stub:I

    move/from16 v24, v1

    iget v1, v0, Lo/p$a;->validateRelationship:I

    move/from16 v25, v1

    iget v1, v0, Lo/p$a;->IPostMessageService:I

    move/from16 v26, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub:I

    move/from16 v27, v1

    iget v1, v0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    move/from16 v28, v1

    iget-object v1, v0, Lo/p$a;->cancel:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lo/p$a;->INotificationSideChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Lo/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lo/callAPI;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lo/generateLink;JIIFIF[BILo/getRewardDetails;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public final onPostMessage(Lo/p$a;)Z
    .locals 4

    .line 1521
    iget-object v0, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 1524
    :goto_0
    iget-object v1, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1525
    iget-object v1, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/p$a;->extraCallback:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$a;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/p$a;->getInterfaceDescriptor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/p$a;->newSession:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/p$a;->updateVisuals:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/p$a;->validateRelationship:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1577
    iget-object v0, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1579
    iget v0, p0, Lo/p$a;->onMessageChannelReady:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    iget v0, p0, Lo/p$a;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    iget v0, p0, Lo/p$a;->extraCallback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lo/p$a;->asInterface:Lo/callAPI;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1585
    iget-object v0, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1588
    iget v0, p0, Lo/p$a;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    iget-object v0, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1590
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1592
    iget-object v3, p0, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1594
    :cond_0
    iget-object v0, p0, Lo/p$a;->warmup:Lo/generateLink;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1595
    iget-wide v2, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1597
    iget v0, p0, Lo/p$a;->getInterfaceDescriptor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    iget v0, p0, Lo/p$a;->newSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget v0, p0, Lo/p$a;->updateVisuals:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1600
    iget v0, p0, Lo/p$a;->postMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    iget v0, p0, Lo/p$a;->extraCommand:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1602
    iget-object v0, p0, Lo/p$a;->mayLaunchUrl:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 1603
    iget-object v0, p0, Lo/p$a;->mayLaunchUrl:[B

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1606
    :cond_2
    iget v0, p0, Lo/p$a;->requestPostMessageChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    iget-object v0, p0, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1609
    iget p2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    iget p2, p0, Lo/p$a;->validateRelationship:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    iget p2, p0, Lo/p$a;->IPostMessageService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    iget p2, p0, Lo/p$a;->IPostMessageService$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    iget p2, p0, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    iget-object p2, p0, Lo/p$a;->cancel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1616
    iget p2, p0, Lo/p$a;->INotificationSideChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
