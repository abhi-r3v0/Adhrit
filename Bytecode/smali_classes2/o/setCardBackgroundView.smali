.class public final Lo/setCardBackgroundView;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setCardBackgroundView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final AudioAttributesCompatParcelizer:Landroid/os/Bundle;

.field public final AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

.field public final AudioAttributesImplBaseParcelizer:Z

.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub$Proxy:I

.field public final ICustomTabsService:Landroid/os/Bundle;

.field public final ICustomTabsService$Stub:J

.field public final ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

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

.field public final INotificationSideChannel$Stub:Ljava/lang/String;

.field public final INotificationSideChannel$Stub$Proxy:Z

.field public final IPostMessageService:Ljava/lang/String;

.field public final IPostMessageService$Stub:Ljava/lang/String;

.field public final IPostMessageService$Stub$Proxy:I

.field public final IconCompatParcelizer:Ljava/lang/String;

.field public final MediaBrowserCompat:Landroid/os/Bundle;

.field public final RemoteActionCompatParcelizer:I

.field public final asBinder:Landroid/content/pm/ApplicationInfo;

.field public final asInterface:Ljava/lang/String;

.field public final cancel:J

.field public final cancelAll:Ljava/lang/String;

.field public final connect:Ljava/lang/String;

.field public final disconnect:Ljava/lang/String;

.field public final extraCallback:Landroid/os/Bundle;

.field public final extraCommand:Z

.field public final getDefaultImpl:I

.field public final getExtras:Ljava/lang/String;

.field public final getInterfaceDescriptor:Landroid/os/Bundle;

.field public final getItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final getRoot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final getServiceComponent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final getSessionToken:Ljava/lang/String;

.field public final isConnected:Z

.field public final mayLaunchUrl:Ljava/lang/String;

.field public final newSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final notify:F

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/setLastItem;

.field public final onPostMessage:Lo/setCurrentItem$default;

.field public final onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

.field public final onTransact:Ljava/lang/String;

.field public final postMessage:I

.field public final read:Z

.field public final requestPostMessageChannel:I

.field public final search:Z

.field public final sendCustomAction:Z

.field public final setDefaultImpl:Z

.field public final subscribe:I

.field public final unsubscribe:Z

.field public final updateVisuals:F

.field public final validateRelationship:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final warmup:Lo/DataListJsonAdapter;

.field public final write:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setAlreadyOpened;

    invoke-direct {v0}, Lo/setAlreadyOpened;-><init>()V

    sput-object v0, Lo/setCardBackgroundView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;Ljava/util/List;JLjava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lo/setLastItem;",
            "Lo/setCurrentItem$default;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/DataListJsonAdapter;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZIIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/activateCredProtect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lo/UserWinningStatisticsJsonAdapter;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    move v1, p1

    iput v1, v0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    move-object v1, p2

    iput-object v1, v0, Lo/setCardBackgroundView;->extraCallback:Landroid/os/Bundle;

    move-object v1, p3

    iput-object v1, v0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    move-object v1, p4

    iput-object v1, v0, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    move-object v1, p5

    iput-object v1, v0, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    move-object v1, p7

    iput-object v1, v0, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    move-object v1, p8

    iput-object v1, v0, Lo/setCardBackgroundView;->onTransact:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lo/setCardBackgroundView;->asInterface:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    move-object v1, p12

    iput-object v1, v0, Lo/setCardBackgroundView;->getInterfaceDescriptor:Landroid/os/Bundle;

    move/from16 v1, p13

    iput v1, v0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub$Proxy:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    if-nez p27, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static/range {p27 .. p27}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/setCardBackgroundView;->ICustomTabsService:Landroid/os/Bundle;

    move/from16 v1, p16

    iput-boolean v1, v0, Lo/setCardBackgroundView;->extraCommand:Z

    move/from16 v1, p17

    iput v1, v0, Lo/setCardBackgroundView;->postMessage:I

    move/from16 v1, p18

    iput v1, v0, Lo/setCardBackgroundView;->requestPostMessageChannel:I

    move/from16 v1, p19

    iput v1, v0, Lo/setCardBackgroundView;->updateVisuals:F

    move-object/from16 v1, p20

    iput-object v1, v0, Lo/setCardBackgroundView;->mayLaunchUrl:Ljava/lang/String;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lo/setCardBackgroundView;->ICustomTabsService$Stub:J

    move-object/from16 v1, p23

    iput-object v1, v0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    if-nez p24, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lo/setCardBackgroundView;->validateRelationship:Ljava/util/List;

    move-object/from16 v1, p25

    iput-object v1, v0, Lo/setCardBackgroundView;->IPostMessageService$Stub:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lo/setCardBackgroundView;->cancel:J

    move-object/from16 v1, p30

    iput-object v1, v0, Lo/setCardBackgroundView;->cancelAll:Ljava/lang/String;

    move/from16 v1, p31

    iput v1, v0, Lo/setCardBackgroundView;->notify:F

    move/from16 v1, p32

    iput-boolean v1, v0, Lo/setCardBackgroundView;->INotificationSideChannel$Stub$Proxy:Z

    move/from16 v1, p33

    iput v1, v0, Lo/setCardBackgroundView;->IPostMessageService$Stub$Proxy:I

    move/from16 v1, p34

    iput v1, v0, Lo/setCardBackgroundView;->getDefaultImpl:I

    move/from16 v1, p35

    iput-boolean v1, v0, Lo/setCardBackgroundView;->INotificationSideChannel$Default:Z

    move/from16 v1, p36

    iput-boolean v1, v0, Lo/setCardBackgroundView;->setDefaultImpl:Z

    move-object/from16 v1, p37

    iput-object v1, v0, Lo/setCardBackgroundView;->INotificationSideChannel$Stub:Ljava/lang/String;

    move-object/from16 v1, p38

    iput-object v1, v0, Lo/setCardBackgroundView;->write:Ljava/lang/String;

    move/from16 v1, p39

    iput-boolean v1, v0, Lo/setCardBackgroundView;->read:Z

    move/from16 v1, p40

    iput v1, v0, Lo/setCardBackgroundView;->RemoteActionCompatParcelizer:I

    move-object/from16 v1, p41

    iput-object v1, v0, Lo/setCardBackgroundView;->AudioAttributesCompatParcelizer:Landroid/os/Bundle;

    move-object/from16 v1, p42

    iput-object v1, v0, Lo/setCardBackgroundView;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v1, p43

    iput-object v1, v0, Lo/setCardBackgroundView;->AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

    move/from16 v1, p44

    iput-boolean v1, v0, Lo/setCardBackgroundView;->AudioAttributesImplBaseParcelizer:Z

    move-object/from16 v1, p45

    iput-object v1, v0, Lo/setCardBackgroundView;->MediaBrowserCompat:Landroid/os/Bundle;

    move-object/from16 v1, p46

    iput-object v1, v0, Lo/setCardBackgroundView;->disconnect:Ljava/lang/String;

    move-object/from16 v1, p47

    iput-object v1, v0, Lo/setCardBackgroundView;->connect:Ljava/lang/String;

    move-object/from16 v1, p48

    iput-object v1, v0, Lo/setCardBackgroundView;->getExtras:Ljava/lang/String;

    move/from16 v1, p49

    iput-boolean v1, v0, Lo/setCardBackgroundView;->isConnected:Z

    move-object/from16 v1, p50

    iput-object v1, v0, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    move-object/from16 v1, p51

    iput-object v1, v0, Lo/setCardBackgroundView;->getSessionToken:Ljava/lang/String;

    move-object/from16 v1, p52

    iput-object v1, v0, Lo/setCardBackgroundView;->getRoot:Ljava/util/List;

    move/from16 v1, p53

    iput v1, v0, Lo/setCardBackgroundView;->subscribe:I

    move/from16 v1, p54

    iput-boolean v1, v0, Lo/setCardBackgroundView;->search:Z

    move/from16 v1, p55

    iput-boolean v1, v0, Lo/setCardBackgroundView;->unsubscribe:Z

    move/from16 v1, p56

    iput-boolean v1, v0, Lo/setCardBackgroundView;->sendCustomAction:Z

    move-object/from16 v1, p57

    iput-object v1, v0, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;JLjava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lo/setLastItem;",
            "Lo/setCurrentItem$default;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/DataListJsonAdapter;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZIIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/activateCredProtect;",
            "J",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lo/UserWinningStatisticsJsonAdapter;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v27, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move-wide/from16 v21, p21

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-wide/from16 v28, p27

    move-object/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move/from16 v53, p52

    move/from16 v54, p53

    move/from16 v55, p54

    move/from16 v56, p55

    move-object/from16 v57, p56

    const/16 v1, 0x18

    invoke-direct/range {v0 .. v57}, Lo/setCardBackgroundView;-><init>(ILandroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;Ljava/util/List;JLjava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lo/setBankNameTopMargin;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 59

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v28, p2

    move-object/from16 v46, p4

    move-object/from16 v47, p5

    move-object/from16 v48, p6

    iget-object v2, v0, Lo/setBankNameTopMargin;->extraCallback:Landroid/os/Bundle;

    iget-object v3, v0, Lo/setBankNameTopMargin;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v4, v0, Lo/setBankNameTopMargin;->onMessageChannelReady:Lo/setCurrentItem$default;

    iget-object v5, v0, Lo/setBankNameTopMargin;->onPostMessage:Ljava/lang/String;

    iget-object v6, v0, Lo/setBankNameTopMargin;->onNavigationEvent:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Lo/setBankNameTopMargin;->asBinder:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lo/setBankNameTopMargin;->connect:Ljava/util/concurrent/Future;

    const-string v15, ""

    invoke-static {v8, v15}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lo/setBankNameTopMargin;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v10, v0, Lo/setBankNameTopMargin;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v11, v0, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    iget-object v12, v0, Lo/setBankNameTopMargin;->onTransact:Landroid/os/Bundle;

    iget v13, v0, Lo/setBankNameTopMargin;->newSession:I

    iget-object v14, v0, Lo/setBankNameTopMargin;->ICustomTabsService:Ljava/util/List;

    move-object/from16 p2, v15

    iget-object v15, v0, Lo/setBankNameTopMargin;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    move-object/from16 v58, v1

    move-object/from16 v1, p2

    move-object/from16 p2, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->getInterfaceDescriptor:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lo/setBankNameTopMargin;->extraCommand:Z

    move/from16 v17, v2

    iget v2, v0, Lo/setBankNameTopMargin;->updateVisuals:I

    move/from16 v18, v2

    iget v2, v0, Lo/setBankNameTopMargin;->mayLaunchUrl:I

    move/from16 v19, v2

    iget v2, v0, Lo/setBankNameTopMargin;->postMessage:F

    move/from16 v20, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->requestPostMessageChannel:Ljava/lang/String;

    move-object/from16 v21, v2

    move-object/from16 p3, v3

    iget-wide v2, v0, Lo/setBankNameTopMargin;->IPostMessageService:J

    move-wide/from16 v22, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->IPostMessageService$Stub:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->validateRelationship:Ljava/util/List;

    move-object/from16 v25, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->ICustomTabsService$Stub:Lo/activateCredProtect;

    move-object/from16 v27, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->notify:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v0, Lo/setBankNameTopMargin;->cancel:F

    move/from16 v31, v2

    iget-boolean v2, v0, Lo/setBankNameTopMargin;->INotificationSideChannel:Z

    move/from16 v32, v2

    iget v2, v0, Lo/setBankNameTopMargin;->cancelAll:I

    move/from16 v33, v2

    iget v2, v0, Lo/setBankNameTopMargin;->IPostMessageService$Stub$Proxy:I

    move/from16 v34, v2

    iget-boolean v2, v0, Lo/setBankNameTopMargin;->INotificationSideChannel$Stub:Z

    move/from16 v35, v2

    iget-boolean v2, v0, Lo/setBankNameTopMargin;->getDefaultImpl:Z

    move/from16 v36, v2

    iget-object v2, v0, Lo/setBankNameTopMargin;->setDefaultImpl:Ljava/util/concurrent/Future;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    const-wide/16 v4, 0x1

    invoke-static {v2, v1, v4, v5, v3}, Lo/InvalidPaymentAmount$$Parcelable;->ICustomTabsCallback(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Ljava/lang/String;

    iget-object v1, v0, Lo/setBankNameTopMargin;->INotificationSideChannel$Stub$Proxy:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->INotificationSideChannel$Default:Z

    move/from16 v39, v1

    iget v1, v0, Lo/setBankNameTopMargin;->read:I

    move/from16 v40, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->IconCompatParcelizer:Landroid/os/Bundle;

    move-object/from16 v41, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->write:Ljava/lang/String;

    move-object/from16 v42, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->AudioAttributesCompatParcelizer:Lo/UserWinningStatisticsJsonAdapter;

    move-object/from16 v43, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->RemoteActionCompatParcelizer:Z

    move/from16 v44, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->AudioAttributesImplBaseParcelizer:Landroid/os/Bundle;

    move-object/from16 v45, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v49, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->MediaBrowserCompat:Ljava/util/List;

    move-object/from16 v50, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->disconnect:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v0, Lo/setBankNameTopMargin;->warmup:Ljava/util/List;

    move-object/from16 v52, v1

    iget v1, v0, Lo/setBankNameTopMargin;->isConnected:I

    move/from16 v53, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->getRoot:Z

    move/from16 v54, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->getExtras:Z

    move/from16 v55, v1

    iget-boolean v1, v0, Lo/setBankNameTopMargin;->getSessionToken:Z

    move/from16 v56, v1

    iget-object v0, v0, Lo/setBankNameTopMargin;->getServiceComponent:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v1, v58

    invoke-direct/range {v1 .. v57}, Lo/setCardBackgroundView;-><init>(Landroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;JLjava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo/setCardBackgroundView;->onMessageChannelReady:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/setCardBackgroundView;->extraCallback:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->onTransact:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->asInterface:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->getInterfaceDescriptor:Landroid/os/Bundle;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget v1, p0, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub$Proxy:I

    const/16 v3, 0xd

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    const/16 v3, 0xe

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->ICustomTabsService:Landroid/os/Bundle;

    const/16 v3, 0xf

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-boolean v1, p0, Lo/setCardBackgroundView;->extraCommand:Z

    const/16 v3, 0x10

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lo/setCardBackgroundView;->postMessage:I

    const/16 v3, 0x12

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v1, p0, Lo/setCardBackgroundView;->requestPostMessageChannel:I

    const/16 v3, 0x13

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v1, p0, Lo/setCardBackgroundView;->updateVisuals:F

    const/16 v3, 0x14

    invoke-static {p1, v3, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lo/setCardBackgroundView;->mayLaunchUrl:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v3, p0, Lo/setCardBackgroundView;->ICustomTabsService$Stub:J

    const/16 v1, 0x19

    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->validateRelationship:Ljava/util/List;

    const/16 v3, 0x1b

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->IPostMessageService$Stub:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    const/16 v3, 0x1d

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    const/16 v3, 0x1e

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-wide v3, p0, Lo/setCardBackgroundView;->cancel:J

    const/16 v1, 0x1f

    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->cancelAll:Ljava/lang/String;

    const/16 v3, 0x21

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lo/setCardBackgroundView;->notify:F

    const/16 v3, 0x22

    invoke-static {p1, v3, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;IF)V

    iget v1, p0, Lo/setCardBackgroundView;->IPostMessageService$Stub$Proxy:I

    const/16 v3, 0x23

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v1, p0, Lo/setCardBackgroundView;->getDefaultImpl:I

    const/16 v3, 0x24

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lo/setCardBackgroundView;->INotificationSideChannel$Default:Z

    const/16 v3, 0x25

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean v1, p0, Lo/setCardBackgroundView;->setDefaultImpl:Z

    const/16 v3, 0x26

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->INotificationSideChannel$Stub:Ljava/lang/String;

    const/16 v3, 0x27

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lo/setCardBackgroundView;->INotificationSideChannel$Stub$Proxy:Z

    const/16 v3, 0x28

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lo/setCardBackgroundView;->write:Ljava/lang/String;

    const/16 v3, 0x29

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lo/setCardBackgroundView;->read:Z

    const/16 v3, 0x2a

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lo/setCardBackgroundView;->RemoteActionCompatParcelizer:I

    const/16 v3, 0x2b

    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo/setCardBackgroundView;->AudioAttributesCompatParcelizer:Landroid/os/Bundle;

    const/16 v3, 0x2c

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->IconCompatParcelizer:Ljava/lang/String;

    const/16 v3, 0x2d

    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setCardBackgroundView;->AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

    const/16 v3, 0x2e

    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lo/setCardBackgroundView;->AudioAttributesImplBaseParcelizer:Z

    const/16 v1, 0x2f

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lo/setCardBackgroundView;->MediaBrowserCompat:Landroid/os/Bundle;

    const/16 v1, 0x30

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object p2, p0, Lo/setCardBackgroundView;->disconnect:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lo/setCardBackgroundView;->connect:Ljava/lang/String;

    const/16 v1, 0x32

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lo/setCardBackgroundView;->getExtras:Ljava/lang/String;

    const/16 v1, 0x33

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lo/setCardBackgroundView;->isConnected:Z

    const/16 v1, 0x34

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    const/16 v1, 0x35

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lo/setCardBackgroundView;->getSessionToken:Ljava/lang/String;

    const/16 v1, 0x36

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lo/setCardBackgroundView;->getRoot:Ljava/util/List;

    const/16 v1, 0x37

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget p2, p0, Lo/setCardBackgroundView;->subscribe:I

    const/16 v1, 0x38

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lo/setCardBackgroundView;->search:Z

    const/16 v1, 0x39

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lo/setCardBackgroundView;->unsubscribe:Z

    const/16 v1, 0x3a

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lo/setCardBackgroundView;->sendCustomAction:Z

    const/16 v1, 0x3b

    invoke-static {p1, v1, p2}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
