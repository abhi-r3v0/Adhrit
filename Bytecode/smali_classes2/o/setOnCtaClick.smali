.class public final Lo/setOnCtaClick;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setOnCtaClick;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final AudioAttributesCompatParcelizer:Z

.field public final AudioAttributesImplApi21Parcelizer:Z

.field public final AudioAttributesImplBaseParcelizer:I

.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub$Proxy:Z

.field public final ICustomTabsService:Ljava/lang/String;

.field public final ICustomTabsService$Stub:Ljava/lang/String;

.field public final ICustomTabsService$Stub$Proxy:Z

.field public final INotificationSideChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final INotificationSideChannel$Default:Z

.field public INotificationSideChannel$Stub:Ljava/lang/String;

.field public final INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

.field public final IPostMessageService:Z

.field public final IPostMessageService$Stub:Z

.field public final IPostMessageService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final IconCompatParcelizer:Ljava/lang/String;

.field public final MediaBrowserCompat:Z

.field public final RemoteActionCompatParcelizer:Lo/NudgeJsonAdapter;

.field public final asBinder:J

.field public final asInterface:Z

.field public final cancel:Lo/FooterActions;

.field public final cancelAll:Z

.field public final connect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final disconnect:Z

.field public extraCallback:Ljava/lang/String;

.field public final extraCommand:Z

.field public final getDefaultImpl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getExtras:Landroid/os/Bundle;

.field public final getInterfaceDescriptor:J

.field private getRoot:Lo/setCardBackgroundView;

.field private final getServiceComponent:I

.field private getSessionToken:Lo/AddMandateRequestBody;

.field public final isConnected:Ljava/lang/String;

.field public final mayLaunchUrl:Ljava/lang/String;

.field public final newSession:Ljava/lang/String;

.field public final notify:Z

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onRelationshipValidationResult:J

.field public final onTransact:J

.field public final postMessage:Z

.field public final read:Ljava/lang/String;

.field public final requestPostMessageChannel:Ljava/lang/String;

.field public final setDefaultImpl:Z

.field public final updateVisuals:Z

.field public validateRelationship:Ljava/lang/String;

.field public final warmup:I

.field public final write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setData;

    invoke-direct {v0}, Lo/setData;-><init>()V

    sput-object v0, Lo/setOnCtaClick;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 54

    move-object/from16 v0, p0

    move/from16 v5, p1

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v0 .. v53}, Lo/setOnCtaClick;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLo/AddMandateRequestBody;Ljava/lang/String;Ljava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 54

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-wide/from16 v13, p2

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v0 .. v53}, Lo/setOnCtaClick;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLo/AddMandateRequestBody;Ljava/lang/String;Ljava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLo/AddMandateRequestBody;Ljava/lang/String;Ljava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lo/AddMandateRequestBody;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lo/FooterActions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/AddressListResponseJsonAdapter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lo/NudgeJsonAdapter;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/os/Bundle;",
            "ZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p28

    invoke-direct {p0}, Lo/getTags;-><init>()V

    move v2, p1

    iput v2, v0, Lo/setOnCtaClick;->getServiceComponent:I

    move-object v2, p2

    iput-object v2, v0, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v0, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    move v3, p5

    iput v3, v0, Lo/setOnCtaClick;->onNavigationEvent:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iput-object v3, v0, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    move-wide v3, p7

    iput-wide v3, v0, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move v3, p9

    iput-boolean v3, v0, Lo/setOnCtaClick;->asInterface:Z

    move-wide v3, p10

    iput-wide v3, v0, Lo/setOnCtaClick;->onTransact:J

    if-eqz p12, :cond_2

    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    iput-object v3, v0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    move-wide/from16 v3, p13

    iput-wide v3, v0, Lo/setOnCtaClick;->asBinder:J

    move/from16 v3, p15

    iput v3, v0, Lo/setOnCtaClick;->warmup:I

    move-object/from16 v3, p16

    iput-object v3, v0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    move-wide/from16 v3, p17

    iput-wide v3, v0, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    move-object/from16 v3, p19

    iput-object v3, v0, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move/from16 v3, p20

    iput-boolean v3, v0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub$Proxy:Z

    move-object/from16 v3, p21

    iput-object v3, v0, Lo/setOnCtaClick;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v3, p22

    iput-object v3, v0, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    move/from16 v3, p23

    iput-boolean v3, v0, Lo/setOnCtaClick;->updateVisuals:Z

    move/from16 v3, p24

    iput-boolean v3, v0, Lo/setOnCtaClick;->postMessage:Z

    move/from16 v3, p25

    iput-boolean v3, v0, Lo/setOnCtaClick;->extraCommand:Z

    move/from16 v3, p26

    iput-boolean v3, v0, Lo/setOnCtaClick;->IPostMessageService:Z

    move/from16 v3, p45

    iput-boolean v3, v0, Lo/setOnCtaClick;->write:Z

    move/from16 v3, p27

    iput-boolean v3, v0, Lo/setOnCtaClick;->ICustomTabsService$Stub$Proxy:Z

    iput-object v1, v0, Lo/setOnCtaClick;->getSessionToken:Lo/AddMandateRequestBody;

    move-object/from16 v3, p29

    iput-object v3, v0, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    move-object/from16 v3, p30

    iput-object v3, v0, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    iget-object v3, v0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    sget-object v3, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Lo/AddMandateRequestBody;->onNavigationEvent(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    check-cast v1, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, v1, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    iput-object v1, v0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    :cond_3
    move/from16 v1, p31

    iput-boolean v1, v0, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lo/setOnCtaClick;->cancelAll:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v1, p34

    iput-object v1, v0, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v1, p35

    iput-object v1, v0, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    move/from16 v1, p36

    iput-boolean v1, v0, Lo/setOnCtaClick;->notify:Z

    move-object/from16 v1, p37

    iput-object v1, v0, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move/from16 v1, p38

    iput-boolean v1, v0, Lo/setOnCtaClick;->INotificationSideChannel$Default:Z

    move-object/from16 v1, p39

    iput-object v1, v0, Lo/setOnCtaClick;->INotificationSideChannel$Stub:Ljava/lang/String;

    move-object/from16 v1, p40

    iput-object v1, v0, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move/from16 v1, p41

    iput-boolean v1, v0, Lo/setOnCtaClick;->setDefaultImpl:Z

    move-object/from16 v1, p42

    iput-object v1, v0, Lo/setOnCtaClick;->read:Ljava/lang/String;

    move-object/from16 v1, p43

    iput-object v1, v0, Lo/setOnCtaClick;->RemoteActionCompatParcelizer:Lo/NudgeJsonAdapter;

    move-object/from16 v1, p44

    iput-object v1, v0, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move/from16 v1, p46

    iput-boolean v1, v0, Lo/setOnCtaClick;->AudioAttributesCompatParcelizer:Z

    move-object/from16 v1, p47

    iput-object v1, v0, Lo/setOnCtaClick;->getExtras:Landroid/os/Bundle;

    move/from16 v1, p48

    iput-boolean v1, v0, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v1, p49

    iput v1, v0, Lo/setOnCtaClick;->AudioAttributesImplBaseParcelizer:I

    move/from16 v1, p50

    iput-boolean v1, v0, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz p51, :cond_4

    invoke-static/range {p51 .. p51}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :cond_4
    iput-object v2, v0, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move/from16 v1, p52

    iput-boolean v1, v0, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move-object/from16 v1, p53

    iput-object v1, v0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/setCardBackgroundView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;)V
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCardBackgroundView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lo/FooterActions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/AddressListResponseJsonAdapter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lo/NudgeJsonAdapter;",
            "Ljava/lang/String;",
            "ZZZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move-object/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move-object/from16 v30, p25

    move/from16 v31, p26

    move/from16 v32, p27

    move-object/from16 v33, p28

    move-object/from16 v34, p29

    move-object/from16 v35, p30

    move/from16 v36, p31

    move-object/from16 v37, p32

    move/from16 v38, p33

    move-object/from16 v39, p34

    move-object/from16 v40, p35

    move/from16 v41, p36

    move-object/from16 v42, p37

    move-object/from16 v43, p38

    move-object/from16 v44, p39

    move/from16 v45, p40

    move/from16 v46, p41

    move/from16 v48, p42

    move/from16 v49, p43

    move/from16 v50, p44

    move-object/from16 v51, p45

    move/from16 v52, p46

    move-object/from16 v53, p47

    const/16 v1, 0x13

    const/4 v5, -0x2

    const-wide/16 v10, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v47, 0x0

    invoke-direct/range {v0 .. v53}, Lo/setOnCtaClick;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLo/AddMandateRequestBody;Ljava/lang/String;Ljava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lo/setOnCtaClick;->getRoot:Lo/setCardBackgroundView;

    return-void
.end method

.method public constructor <init>(Lo/setCardBackgroundView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;)V
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCardBackgroundView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lo/FooterActions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/AddressListResponseJsonAdapter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lo/NudgeJsonAdapter;",
            "Ljava/lang/String;",
            "ZZZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    move-object/from16 v33, p30

    move-object/from16 v34, p31

    move-object/from16 v35, p32

    move/from16 v36, p33

    move-object/from16 v37, p34

    move/from16 v38, p35

    move-object/from16 v39, p36

    move-object/from16 v40, p37

    move/from16 v41, p38

    move-object/from16 v42, p39

    move-object/from16 v43, p40

    move-object/from16 v44, p41

    move/from16 v45, p42

    move/from16 v46, p43

    move/from16 v48, p44

    move/from16 v50, p46

    move-object/from16 v51, p47

    move/from16 v52, p48

    move-object/from16 v53, p49

    const/16 v1, 0x13

    const/4 v5, -0x2

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    invoke-direct/range {v0 .. v53}, Lo/setOnCtaClick;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLo/AddMandateRequestBody;Ljava/lang/String;Ljava/lang/String;ZZLo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lo/NudgeJsonAdapter;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lo/setOnCtaClick;->getRoot:Lo/setCardBackgroundView;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget-object v0, p0, Lo/setOnCtaClick;->getRoot:Lo/setCardBackgroundView;

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    iget v0, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lo/AddMandateRequestBody;

    new-instance v2, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;

    iget-object v3, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {v2, v3}, Lo/AutoDebitConfirmResultDialog$dismissInternal$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lo/AddMandateRequestBody;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lo/setOnCtaClick;->getSessionToken:Lo/AddMandateRequestBody;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, Lo/setOnCtaClick;->getServiceComponent:I

    invoke-static {p1, v2, v3}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x3

    iget-object v3, p0, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x4

    iget-object v3, p0, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    invoke-static {p1, v2, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v2, 0x5

    iget v3, p0, Lo/setOnCtaClick;->onNavigationEvent:I

    invoke-static {p1, v2, v3}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    const/4 v2, 0x6

    iget-object v3, p0, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {p1, v2, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v2, 0x7

    iget-wide v5, p0, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    invoke-static {p1, v2, v5, v6}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    const/16 v2, 0x8

    iget-boolean v3, p0, Lo/setOnCtaClick;->asInterface:Z

    invoke-static {p1, v2, v3}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-wide v2, p0, Lo/setOnCtaClick;->onTransact:J

    invoke-static {p1, v1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lo/setOnCtaClick;->asBinder:J

    invoke-static {p1, v1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget v2, p0, Lo/setOnCtaClick;->warmup:I

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-wide v2, p0, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    invoke-static {p1, v1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lo/setOnCtaClick;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    iget-object v2, p0, Lo/setOnCtaClick;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x15

    iget-object v2, p0, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x16

    iget-boolean v2, p0, Lo/setOnCtaClick;->updateVisuals:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x17

    iget-boolean v2, p0, Lo/setOnCtaClick;->postMessage:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x18

    iget-boolean v2, p0, Lo/setOnCtaClick;->extraCommand:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x19

    iget-boolean v2, p0, Lo/setOnCtaClick;->IPostMessageService:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x1a

    iget-boolean v2, p0, Lo/setOnCtaClick;->ICustomTabsService$Stub$Proxy:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x1c

    iget-object v2, p0, Lo/setOnCtaClick;->getSessionToken:Lo/AddMandateRequestBody;

    invoke-static {p1, v1, v2, p2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x1d

    iget-object v2, p0, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x1e

    iget-object v2, p0, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x1f

    iget-boolean v2, p0, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x20

    iget-boolean v2, p0, Lo/setOnCtaClick;->cancelAll:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x21

    iget-object v2, p0, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    invoke-static {p1, v1, v2, p2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x22

    iget-object v2, p0, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x23

    iget-object v2, p0, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x24

    iget-boolean v2, p0, Lo/setOnCtaClick;->notify:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x25

    iget-object v2, p0, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    invoke-static {p1, v1, v2, p2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x26

    iget-boolean v2, p0, Lo/setOnCtaClick;->INotificationSideChannel$Default:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x27

    iget-object v2, p0, Lo/setOnCtaClick;->INotificationSideChannel$Stub:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x28

    iget-object v2, p0, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x2a

    iget-boolean v2, p0, Lo/setOnCtaClick;->setDefaultImpl:Z

    invoke-static {p1, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x2b

    iget-object v2, p0, Lo/setOnCtaClick;->read:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x2c

    iget-object v2, p0, Lo/setOnCtaClick;->RemoteActionCompatParcelizer:Lo/NudgeJsonAdapter;

    invoke-static {p1, v1, v2, p2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x2d

    iget-object v1, p0, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    invoke-static {p1, p2, v1, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x2e

    iget-boolean v1, p0, Lo/setOnCtaClick;->write:Z

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x2f

    iget-boolean v1, p0, Lo/setOnCtaClick;->AudioAttributesCompatParcelizer:Z

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x30

    iget-object v1, p0, Lo/setOnCtaClick;->getExtras:Landroid/os/Bundle;

    invoke-static {p1, p2, v1, v4}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 p2, 0x31

    iget-boolean v1, p0, Lo/setOnCtaClick;->disconnect:Z

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x32

    iget v1, p0, Lo/setOnCtaClick;->AudioAttributesImplBaseParcelizer:I

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    const/16 p2, 0x33

    iget-boolean v1, p0, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x34

    iget-object v1, p0, Lo/setOnCtaClick;->connect:Ljava/util/List;

    invoke-static {p1, p2, v1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0x35

    iget-boolean v1, p0, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    invoke-static {p1, p2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x36

    iget-object v1, p0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    invoke-static {p1, p2, v1, v4}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
