.class public Lin/juspay/hypersdk/core/JBridge;
.super Lin/juspay/hypersdk/core/DuiInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/core/JBridge$MyGestureListener;,
        Lin/juspay/hypersdk/core/JBridge$MyGestureObject;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JBridge"


# instance fields
.field private final AMAZON_PROCESS_CHARGE_REQUEST_CODE:I

.field private final AMAZON_REQUEST_CODE:I

.field private final CUSTOMTAB_REQUEST_CODE:I

.field private final JUSPAY_LOADER_ID:I

.field private final PHONEPE_REQUEST_CODE:I

.field private acceptedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private amazonLinkCallback:Ljava/lang/String;

.field private amazonTimeSincePolled:I

.field private axisUpiSdkMerchant:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

.field private beepManager:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private captureManager:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

.field private client:Lo/setPasswordVisibilityToggleTintList;

.field private deliveredSmsListener:Landroid/content/BroadcastReceiver;

.field private expiryTextWatcher:Landroid/text/TextWatcher;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private npciClServices:Lorg/npci/upi/security/services/CLServices;

.field private onResumeCallback:Ljava/lang/String;

.field private phonepeTxnCallback:Ljava/lang/String;

.field private sentSmsListener:Landroid/content/BroadcastReceiver;

.field private textWatcher:Landroid/text/TextWatcher;

.field private viesSensoryBrandingView:Lcom/visa/SensoryBrandingView;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Lin/juspay/hypersdk/HyperFragment;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/core/DuiInterface;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Lin/juspay/hypersdk/HyperFragment;)V

    const/16 p3, 0x6f

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge;->AMAZON_REQUEST_CODE:I

    const/16 p3, 0x70

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge;->AMAZON_PROCESS_CHARGE_REQUEST_CODE:I

    const/16 p3, 0x71

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge;->PHONEPE_REQUEST_CODE:I

    const/16 p3, 0x73

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge;->CUSTOMTAB_REQUEST_CODE:I

    const p3, 0xdb7ad

    iput p3, p0, Lin/juspay/hypersdk/core/JBridge;->JUSPAY_LOADER_ID:I

    const/4 p3, 0x0

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->amazonLinkCallback:Ljava/lang/String;

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->phonepeTxnCallback:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lin/juspay/hypersdk/core/JBridge;->amazonTimeSincePolled:I

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->textWatcher:Landroid/text/TextWatcher;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->expiryTextWatcher:Landroid/text/TextWatcher;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->client:Lo/setPasswordVisibilityToggleTintList;

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->acceptedCerts:Ljava/util/Set;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->viesSensoryBrandingView:Lcom/visa/SensoryBrandingView;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/core/JBridge;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->receiverCallback(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lin/juspay/hypersdk/core/JBridge;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lin/juspay/hypersdk/core/JBridge;)Z
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/JBridge;->isPermissionGranted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lin/juspay/hypersdk/core/JBridge;->openQRScanner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/core/JBridge;)I
    .locals 0

    iget p0, p0, Lin/juspay/hypersdk/core/JBridge;->amazonTimeSincePolled:I

    return p0
.end method

.method static synthetic access$202(Lin/juspay/hypersdk/core/JBridge;I)I
    .locals 0

    iput p1, p0, Lin/juspay/hypersdk/core/JBridge;->amazonTimeSincePolled:I

    return p1
.end method

.method static synthetic access$300(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/JuspayServices;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-object p0
.end method

.method static synthetic access$400(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)Landroid/app/DatePickerDialog;
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->newDialogWithoutDateField(Ljava/lang/String;)Landroid/app/DatePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lin/juspay/hypersdk/core/JBridge;I[Landroid/view/View;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lin/juspay/hypersdk/core/JBridge;->generateBackgroundWithShadow(I[Landroid/view/View;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lin/juspay/hypersdk/core/JBridge;)Lcom/visa/SensoryBrandingView;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->viesSensoryBrandingView:Lcom/visa/SensoryBrandingView;

    return-object p0
.end method

.method static synthetic access$602(Lin/juspay/hypersdk/core/JBridge;Lcom/visa/SensoryBrandingView;)Lcom/visa/SensoryBrandingView;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->viesSensoryBrandingView:Lcom/visa/SensoryBrandingView;

    return-object p1
.end method

.method static synthetic access$700(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->axisUpiSdkMerchant:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    return-object p0
.end method

.method static synthetic access$800(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->captureManager:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    return-object p0
.end method

.method static synthetic access$802(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->captureManager:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    return-object p1
.end method

.method static synthetic access$900(Lin/juspay/hypersdk/core/JBridge;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/JBridge;->beepManager:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    return-object p0
.end method

.method static synthetic access$902(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;)Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->beepManager:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    return-object p1
.end method

.method public static dpToPx(FLandroid/content/Context;)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float p0, p0, p1

    return p0
.end method

.method private drawIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$8;

    invoke-direct {v2, p0, p2, p1, v0}, Lin/juspay/hypersdk/core/JBridge$8;-><init>(Lin/juspay/hypersdk/core/JBridge;ILandroid/graphics/drawable/Drawable;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private generateBackgroundWithShadow(I[Landroid/view/View;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/graphics/drawable/Drawable;
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p8

    move-object/from16 v0, p9

    iget-object v4, v1, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v4}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v4

    const/4 v12, 0x0

    aget-object v5, p2, v12

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x2

    if-ne v2, v14, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v15, v6

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v10, v11, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    :goto_1
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object/from16 v7, p4

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    int-to-float v8, v8

    move-object/from16 v17, v15

    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    double-to-float v9, v14

    mul-float v8, v8, v9

    move-object/from16 v9, p5

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v15, p3

    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/16 v12, 0x8

    new-array v12, v12, [F
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v18, 0x0

    :try_start_2
    aput v8, v12, v18

    const/4 v7, 0x1

    aput v8, v12, v7

    const/16 v16, 0x2

    aput v8, v12, v16

    const/16 v19, 0x3

    aput v8, v12, v19

    const/16 v19, 0x4

    aput v8, v12, v19

    const/16 v19, 0x5

    aput v8, v12, v19

    const/16 v19, 0x6

    aput v8, v12, v19

    const/16 v19, 0x7

    aput v8, v12, v19

    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v9, p6

    move/from16 v20, v11

    :try_start_3
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v11, v11, v1

    move-object/from16 v1, p7

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    int-to-float v2, v2

    move-object/from16 v21, v4

    :try_start_4
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v5, v8, v11, v2, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v12, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    aput-object v7, v10, v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p8

    move-object/from16 v15, v17

    move/from16 v11, v20

    move-object/from16 v4, v21

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v20, v11

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v20, v11

    goto :goto_2

    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v17, v15

    const/16 v18, 0x0

    move-object v1, v10

    move v2, v11

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v20, v11

    move-object/from16 v17, v15

    :goto_2
    const/16 v18, 0x0

    :goto_3
    move-object v11, v0

    const-string v6, "JBridge"

    const-string v7, "action"

    const-string v8, "system"

    const-string v9, "jbridge"

    const-string v0, "Error while generating background for shadow"

    move-object/from16 v5, v21

    move-object v1, v10

    move-object v10, v0

    move/from16 v2, v20

    invoke-virtual/range {v5 .. v11}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v2, :cond_4

    :try_start_5
    aget-object v0, p2, v12

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    aget-object v1, p2, v12

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v4

    aget-object v5, p2, v12

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v5

    aget-object v6, p2, v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move/from16 v6, p1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    if-eqz v17, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v1, v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v4, v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v9
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    :cond_2
    move-object/from16 v8, p0

    :try_start_6
    iget-object v9, v8, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v9, :cond_3

    move-object/from16 v9, p8

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v8, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v10, v11}, Lin/juspay/hypersdk/core/JBridge;->dpToPx(FLandroid/content/Context;)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v0, v10

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v8, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v10, v11}, Lin/juspay/hypersdk/core/JBridge;->dpToPx(FLandroid/content/Context;)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v1, v10

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v8, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v10, v11}, Lin/juspay/hypersdk/core/JBridge;->dpToPx(FLandroid/content/Context;)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v4, v10

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v8, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v10, v11}, Lin/juspay/hypersdk/core/JBridge;->dpToPx(FLandroid/content/Context;)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v5, v10

    goto :goto_6

    :cond_3
    move-object/from16 v9, p8

    :goto_6
    move/from16 v24, v0

    move/from16 v25, v1

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v22, v3

    move/from16 v23, v12

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v8, p0

    :goto_7
    const-string v1, "JBridge"

    const-string v2, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error while generating background for shadow"

    move-object/from16 p1, v21

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v0

    invoke-virtual/range {p1 .. p7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_4
    move-object/from16 v8, p0

    :goto_8
    return-object v3
.end method

.method private getCustomTabIntent(Ljava/lang/String;)Lo/forceCloseConnection;
    .locals 3

    new-instance v0, Lo/forceCloseConnection$onNavigationEvent;

    invoke-direct {v0}, Lo/forceCloseConnection$onNavigationEvent;-><init>()V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 1313
    iget-object v1, v0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    iget-object p1, v0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    iget-boolean v1, v0, Lo/forceCloseConnection$onNavigationEvent;->extraCallback:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1526
    new-instance p1, Lo/forceCloseConnection;

    iget-object v0, v0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lo/forceCloseConnection;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object p1
.end method

.method private getDecodedQueryParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static hmacDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p2, "ASCII"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private isPermissionGranted()Z
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private newDialogWithoutDateField(Ljava/lang/String;)Landroid/app/DatePickerDialog;
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v4, Lin/juspay/hypersdk/core/JBridge$10;

    invoke-direct {v4, p0, p1}, Lin/juspay/hypersdk/core/JBridge$10;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    new-instance v8, Lin/juspay/hypersdk/core/JBridge$11;

    invoke-direct {v8, p0, p1}, Lin/juspay/hypersdk/core/JBridge$11;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    new-instance v9, Lin/juspay/hypersdk/core/JBridge$12;

    invoke-direct {v9, p0, p1}, Lin/juspay/hypersdk/core/JBridge$12;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const/4 v3, 0x2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1, v8}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private openQRScanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "JBridge"

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Opening QR Scanner inside Frame with ID :"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$29;

    invoke-direct {v2, p0, v0, p1, p2}, Lin/juspay/hypersdk/core/JBridge$29;-><init>(Lin/juspay/hypersdk/core/JBridge;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "ERROR: Frame ID null!!"

    invoke-static {v1, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private receiverCallback(Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "verificationParameters"

    const-string v3, "verificationOperationName"

    const-string v4, "transactionId"

    const-string v5, "status"

    const-string v6, "signature"

    iget-object v7, v1, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v7}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v7

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    const v12, -0x7944ba1a

    const/4 v13, 0x1

    if-eq v11, v12, :cond_1

    const v12, 0x4a466386    # 3250401.5f

    if-eq v11, v12, :cond_0

    goto :goto_0

    :cond_0
    const-string v11, "customtab-result"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const-string v11, "amazonpay-result"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v10, 0x0

    :cond_2
    :goto_0
    if-eqz v10, :cond_4

    if-eq v10, v13, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lin/juspay/hypersdk/core/JBridge;->handleCustomTabResult(Landroid/content/Intent;)V

    :goto_1
    const-string v9, "external_sdk"

    const-string v10, "error"

    const-string v11, "receiver_callback"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "unknown_intent"

    const/16 v18, 0x0

    move-object v8, v7

    invoke-virtual/range {v8 .. v18}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    const-string v2, "amazonpay-result-cb"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v14, v0

    const-string v9, "JBridge"

    const-string v10, "api_call"

    const-string v11, "external_sdk"

    const-string v12, "receiver_callback"

    const-string v13, "JSON Exception"

    move-object v8, v7

    invoke-virtual/range {v8 .. v14}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addCardListener(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "card_listener"

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->textWatcher:Landroid/text/TextWatcher;

    :cond_0
    new-instance v0, Lin/juspay/hypersdk/core/JBridge$15;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/core/JBridge$15;-><init>(Lin/juspay/hypersdk/core/JBridge;)V

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    move-object v8, p1

    const-string v3, "JBridge"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Exception while adding listener for card entry"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addCertificates(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->acceptedCerts:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while manipulating JSON"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addGestureListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v4, Lin/juspay/hypersdk/core/JBridge$MyGestureListener;

    invoke-direct {v4, p0, p2}, Lin/juspay/hypersdk/core/JBridge$MyGestureListener;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    if-eqz v1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance p2, Lin/juspay/hypersdk/core/JBridge$16;

    invoke-direct {p2, p0, v1, v2}, Lin/juspay/hypersdk/core/JBridge$16;-><init>(Lin/juspay/hypersdk/core/JBridge;Landroid/view/View;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "jbridge"

    const-string v5, "addGestureListener"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "View with id "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "error while adding listener for gesture"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addOnScrollChangeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$17;

    invoke-direct {v2, p0, v1, p2}, Lin/juspay/hypersdk/core/JBridge$17;-><init>(Lin/juspay/hypersdk/core/JBridge;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "jbridge"

    const-string v5, "addonscrollchangelistener"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "View with id "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "error while adding listener for scroll"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public amazonChargeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v10

    :try_start_0
    iget-object v0, v9, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lin/juspay/hypersdk/core/JBridge;->getDecodedQueryParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v11, Lamazonpay/silentpay/EncryptedRequest;

    const-string v2, "payload"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "iv"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v11, v2, v3, v1, v4}, Lamazonpay/silentpay/EncryptedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, v9, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v13, Lin/juspay/hypersdk/core/JBridge$7;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lin/juspay/hypersdk/core/JBridge$7;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-static {v12, v11, v13}, Lamazonpay/silentpay/AmazonPay;->getChargeStatus(Landroid/content/Context;Lamazonpay/silentpay/EncryptedRequest;Lamazonpay/silentpay/APayCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "Charge status exception"

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "FAILED"

    move-object/from16 v1, p4

    invoke-virtual {p0, v1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public amazonNonTokenPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lin/juspay/hypersdk/core/JBridge;->launchCustomTab(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public amazonPayProcessCharge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    const-string v1, ""

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "amazonpay-result"

    invoke-virtual {p0, v3}, Lin/juspay/hypersdk/core/JBridge;->registerReceiver(Ljava/lang/String;)V

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    const-string v4, "amazonpay-result-cb"

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->getDecodedQueryParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-class v5, Lin/juspay/hypersdk/core/CompletionActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "COMPLETION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-class v6, Lin/juspay/hypersdk/core/CompletionActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "CANCEL"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2}, Lin/juspay/hypersdk/core/JBridge;->getCustomTabIntent(Ljava/lang/String;)Lo/forceCloseConnection;

    move-result-object p2

    iget-object v5, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x70

    invoke-static {v5, v7, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v5, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Lamazonpay/silentpay/EncryptedRequest;

    const-string v6, "payload"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "key"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "iv"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {v5, v6, v7, p1, p3}, Lamazonpay/silentpay/EncryptedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, p2, v3, v4, v5}, Lamazonpay/silentpay/AmazonPay;->processCharge(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lamazonpay/silentpay/EncryptedRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    move-object v9, p1

    const-string v4, "JBridge"

    const-string v5, "api_call"

    const-string v6, "external_sdk"

    const-string v7, "amazon_utils"

    const-string v8, "Process Charge Exception"

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->unRegisterReceiver()V

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "signature"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "status"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "transactionId"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "verificationOperationName"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "verificationParameters"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v9, p1

    const-string v4, "JBridge"

    const-string v5, "api_call"

    const-string v6, "external_sdk"

    const-string v7, "amazon_utils"

    const-string v8, "JSON Exception"

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blurBackground(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance p2, Lin/juspay/hypersdk/core/JBridge$26;

    move-object v1, p2

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lin/juspay/hypersdk/core/JBridge$26;-><init>(Lin/juspay/hypersdk/core/JBridge;Landroid/renderscript/RenderScript;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public callAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 17
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v13, p0

    move/from16 v0, p6

    iget-object v1, v13, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v14

    iget-object v1, v13, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v3, "network"

    const-string v4, "info"

    const-string v5, "before_request"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move-object/from16 v12, p1

    invoke-virtual/range {v2 .. v12}, Lin/juspay/hypersdk/core/SdkTracker;->trackApiCalls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v12, Lin/juspay/hypersdk/utils/network/NetUtils;

    const/4 v11, 0x0

    invoke-direct {v12, v11, v11, v0}, Lin/juspay/hypersdk/utils/network/NetUtils;-><init>(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Lin/juspay/vies/VIESSocketFactory;

    iget-object v1, v13, Lin/juspay/hypersdk/core/JBridge;->acceptedCerts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lin/juspay/vies/VIESSocketFactory;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0}, Lin/juspay/vies/VIESSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v12, v0}, Lin/juspay/hypersdk/utils/network/NetUtils;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JBridge"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Lin/juspay/hypersdk/core/JBridge$9;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p7

    move-object v9, v15

    move-object/from16 v10, p4

    const/4 v14, 0x0

    move/from16 v11, p5

    invoke-direct/range {v1 .. v12}, Lin/juspay/hypersdk/core/JBridge$9;-><init>(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin/juspay/mystique/DynamicUI;Ljava/lang/String;ZLin/juspay/hypersdk/utils/network/NetUtils;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v14

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :catch_1
    return-void
.end method

.method public checkAmazonApiKey()Z
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "api_key.txt"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    move-object v7, v2

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "Check Api Key Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public checkAmazonNonTokenSdk(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    const-string v0, "o.forceCloseConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "Amazon Sdk Not found Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkAmazonSdk(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->checkAmazonSdk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkAmazonSdk()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->checkAmazonApiKey()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "amazonpay.silentpay.AmazonPay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "amazonpay.silentpay.GetBalanceRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "o.forceCloseConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.amazon.identity.auth.device.AuthError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.amazon.identity.auth.device.api.Listener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.amazon.identity.auth.device.api.authorization.AuthorizationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkCustomTabs()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "o.forceCloseConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkPaypalMagnesSdk(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->checkPaypalMagnesSdk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkPaypalMagnesSdk()Z
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    const-string v0, "lib.android.paypal.com.magnessdk.MagnesResult"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "lib.android.paypal.com.magnessdk.MagnesSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "paypal_utils"

    const-string v6, "Paypal magnes sdk not found Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public checkPhonePeSdk(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->checkPhonePeSdk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkPhonePeSdk()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "com.phonepe.android.sdk.api.PhonePe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.phonepe.android.sdk.api.PhonePeInitException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.phonepe.android.sdk.api.builders.TransactionRequestBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.phonepe.android.sdk.base.model.TransactionRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public createKeyStoreEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lin/juspay/hypersdk/security/SecurityHelper;->createKeys(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p3, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to create keys"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p4, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "SDK 18+ required"

    goto :goto_0
.end method

.method public cursorPosition(I)I
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Cursor Position Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dateToMillisecond(Ljava/lang/String;)J
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error in date to millis"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public doesPhonePeAppExist(Ljava/lang/String;)Z
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v8, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget p1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    move-object p1, v2

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "phonepe_utils"

    const-string v6, "Failed to get phonepe package name"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    move-object v2, p1

    :goto_0
    const/4 p1, 0x0

    if-nez v2, :cond_0

    return p1

    :cond_0
    const-wide/32 v2, 0x16f51

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return v8

    :cond_1
    return p1
.end method

.method public doesSimplExist()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "com.simpl.android.fingerprint.SimplFingerprint"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.simpl.android.fingerprint.SimplFingerprintListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public drawAppIcon(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v4}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v4, v3}, Lin/juspay/hypersdk/core/JBridge;->drawIcon(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error happened while parsing json"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public duiAmazonLinkStatus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->amazonLinkCallback:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public encryptRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lin/juspay/hypersdk/core/JBridge;->encryptRSAHelper(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptRSAHelper(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    const-string v0, ""

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    const-string v1, "-----BEGIN PUBLIC KEY-----\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "-----END PUBLIC KEY-----"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v8, p1

    const-string v3, "JBridge"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Exception when encrypting using RSA"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeOnUpiSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->axisUpiSdkMerchant:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    if-nez v0, :cond_0

    new-instance v0, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v8, Lin/juspay/hypersdk/core/JBridge$27;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lin/juspay/hypersdk/core/JBridge$27;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, v8}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JBridge;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->axisUpiSdkMerchant:Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/AxisUpiSdkMerchant;->executeOnSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitApp(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lin/juspay/mystique/SwypeLayout;->clear()V

    invoke-super {p0, p1, p2}, Lin/juspay/hypersdk/core/DuiInterface;->exitApp(ILjava/lang/String;)V

    return-void
.end method

.method public expiry(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "delta_expiry"

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    :cond_0
    if-eqz v1, :cond_3

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->expiryTextWatcher:Landroid/text/TextWatcher;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->expiryTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lin/juspay/hypersdk/core/JBridge$14;

    invoke-direct {p1, p0, v2}, Lin/juspay/hypersdk/core/JBridge$14;-><init>(Lin/juspay/hypersdk/core/JBridge;Lin/juspay/hypersdk/core/SdkTracker;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->expiryTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    move-object v8, p1

    const-string v3, "JBridge"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Exception while adding listener for expiry"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public findApps(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {v8, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v2, v8}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v3, "packageName"

    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appName"

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error while searching for the app"

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Error While add to json"

    :goto_1
    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "[]"

    return-object p1
.end method

.method public getAmazonBalance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    new-instance v0, Lamazonpay/silentpay/GetBalanceRequest;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lamazonpay/silentpay/GetBalanceRequest;-><init>(Ljava/lang/String;Z)V

    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance p2, Lin/juspay/hypersdk/core/JBridge$5;

    invoke-direct {p2, p0, p3}, Lin/juspay/hypersdk/core/JBridge$5;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lamazonpay/silentpay/AmazonPay;->getBalance(Landroid/content/Context;Lamazonpay/silentpay/GetBalanceRequest;Lamazonpay/silentpay/APayCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "Amazon Pay Balance Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "ERROR"

    invoke-virtual {p0, p3, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBuildInfo()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "BOARD"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "BRAND"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "CPU_ABI"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "CPU_ABI2"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "DEVICE"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "DISPLAY"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "FINGERPRINT"

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "HARDWARE"

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "HOST"

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ID"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "MANUFACTURER"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "PRODUCT"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "RADIO"

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "TAGS"

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "TIME"

    sget-wide v3, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "USER"

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "SUPPORTED_32_BIT_ABIS"

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "SUPPORTED_64_BIT_ABIS"

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "SUPPORTED_ABIS"

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    const-string v3, "BASE_OS"

    sget-object v4, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "INCREMENTAL"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PREVIEW_SDK_INT"

    sget v4, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "SECURITY_PATCH"

    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "RELEASE"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "SDK_INT"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "VERSION"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception fetching build info"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public getDensity()F
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    return v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->getSessionData()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "android_id_raw"

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while extracting android id"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JsInterface;->getSessionInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p1}, Lin/juspay/hypersdk/security/SecurityHelper;->getKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPackageName(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "NULL Pointer Exception while getting package name"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "ERROR"

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPayPalRiskId()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    new-instance v0, Llib/android/paypal/com/magnessdk/MagnesSettings$Builder;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Llib/android/paypal/com/magnessdk/MagnesSettings$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Llib/android/paypal/com/magnessdk/MagnesSettings$Builder;->build()Llib/android/paypal/com/magnessdk/MagnesSettings;

    move-result-object v0

    invoke-static {}, Llib/android/paypal/com/magnessdk/MagnesSDK;->getInstance()Llib/android/paypal/com/magnessdk/MagnesSDK;

    move-result-object v2

    invoke-virtual {v2, v0}, Llib/android/paypal/com/magnessdk/MagnesSDK;->setUp(Llib/android/paypal/com/magnessdk/MagnesSettings;)Llib/android/paypal/com/magnessdk/MagnesSettings;

    invoke-static {}, Llib/android/paypal/com/magnessdk/MagnesSDK;->getInstance()Llib/android/paypal/com/magnessdk/MagnesSDK;

    move-result-object v0

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Llib/android/paypal/com/magnessdk/MagnesSDK;->collectAndSubmit(Landroid/content/Context;)Llib/android/paypal/com/magnessdk/MagnesResult;

    move-result-object v0

    invoke-virtual {v0}, Llib/android/paypal/com/magnessdk/MagnesResult;->getPaypalClientMetaDataId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "paypal_utils"

    const-string v6, "Exception at RiskId"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "ERROR"

    return-object v0
.end method

.method public getPayPalRiskId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->getPayPalRiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPaymentFragment()Lin/juspay/hypersdk/HyperFragment;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    return-object v0
.end method

.method public getPhonePeVersionCode(Ljava/lang/String;)J
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->doesPhonePeAppExist(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "failed to get package info for package name = {%s}, exception message = {%s}"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "JBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v2
.end method

.method public getResourceByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-string v8, "0"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-super {p0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->getResourceById(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Get Resource Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v8
.end method

.method public getSHA256Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JBridge"

    const-string v3, "result is "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v8, p1

    const-string v3, "JBridge"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Exception caught trying to SHA-256 hash"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getSimplFingerPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz p3, :cond_0

    invoke-static {p3, p1, p2}, Lcom/simpl/android/fingerprint/SimplFingerprint;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/simpl/android/fingerprint/SimplFingerprint;->getInstance()Lcom/simpl/android/fingerprint/SimplFingerprint;

    move-result-object p1

    new-instance p2, Lin/juspay/hypersdk/core/JBridge$4;

    invoke-direct {p2, p0, p4}, Lin/juspay/hypersdk/core/JBridge$4;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/simpl/android/fingerprint/SimplFingerprint;->generateFingerprint(Lcom/simpl/android/fingerprint/SimplFingerprintListener;)V

    return-void

    :cond_0
    const-string p1, "{\"error\":\"activity_not_present\""

    invoke-virtual {p0, p4, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getStatusBarHeight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-string v8, "0"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Get Resource Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v8
.end method

.method public gpay_isReadyToPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v8, Lin/juspay/hypersdk/core/JBridge$19;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lin/juspay/hypersdk/core/JBridge$19;-><init>(Lin/juspay/hypersdk/core/JBridge;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-static {v7, p1, v8}, Lin/juspay/hypersdk/utils/GPayUtils;->isReady(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "gpay_utils"

    const-string v6, "Error while checking GPay isReadyToPay"

    move-object v1, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gpay_startInAppPayment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0, p1}, Lin/juspay/hypersdk/utils/GPayUtils;->pay(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "gpay_utils"

    const-string v6, "Error while making GPay payment"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleCustomTabResult(Landroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v0, "{}"

    const-string v8, "customtab-result-cb"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "custom_tab"

    const-string v6, "JSON Exception"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePhonepayActivityResult(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->phonepeTxnCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideJuspayLoader(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$3;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/JBridge$3;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hideSoftInput()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public initSafeBrowsing()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->client:Lo/setPasswordVisibilityToggleTintList;

    if-eqz v0, :cond_0

    .line 3000
    new-instance v1, Lo/SplitInstallException;

    invoke-direct {v1, v0}, Lo/SplitInstallException;-><init>(Lo/setPasswordVisibilityToggleTintList;)V

    invoke-virtual {v0, v1}, Lo/setPaymentDueDateWeaklyTyped;->doRead(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public isCCTSupportedChromeAvailable(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lin/juspay/hypersdk/core/CustomtabActivity;->getCustomTabsPackages(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lin/juspay/hypersdk/core/CustomtabActivity;->isChromeInstalled(Ljava/util/ArrayList;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isDualSIM()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->isDualSim(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPlayStoreInstalled()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3001
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSafetyNetSDKPresent()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lo/setPasswordVisibilityToggleEnabled;

    const-class v2, Lo/setEndIconTintMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public isSimSupport()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->isSimSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public jweDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lin/juspay/hypersdk/security/SecurityHelper;->getKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "payload"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p1, p2}, Lin/juspay/vies/b;->a(Ljava/lang/String;Ljava/security/PrivateKey;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to decrypt JSON Web Token"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"error\":true,\"payload\":\"%s\"}"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jweEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string v2, "{\"error\":false,\"payload\":\"%s\"}"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lin/juspay/vies/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to encrypt JSON Web Token"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"error\":true,\"payload\":\"%s\"}"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jwsSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-static {p3}, Lin/juspay/hypersdk/security/SecurityHelper;->getKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p3

    const-string v2, "{\"error\":false,\"payload\":\"%s\"}"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lin/juspay/vies/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to sign JSON Web Token"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"error\":true,\"payload\":\"%s\"}"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jwsVerify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lin/juspay/vies/b;->a(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to verify JSON Web Token"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public keyStoreEntryPresent(Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lin/juspay/hypersdk/security/SecurityHelper;->keyExists(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v7

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while checking if a key exists in key store"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public launchCustomTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    const-string v2, "customtab-result-cb"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lin/juspay/hypersdk/core/CustomtabActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "customtab-result"

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->registerReceiver(Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "custom_tab"

    const-string v6, "Exception at launch customtab"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->unRegisterReceiver()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public linkAmazonPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge;->amazonLinkCallback:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->getCustomTabIntent(Ljava/lang/String;)Lo/forceCloseConnection;

    move-result-object p1

    invoke-static {v2, p1}, Lamazonpay/silentpay/AmazonPay;->getAuthorizationIntent(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;

    move-result-object p1

    const/16 v2, 0x6f

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "Error linking amazon pay"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadViesAnimationFor(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$24;

    invoke-direct {v2, p0, p1}, Lin/juspay/hypersdk/core/JBridge$24;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while loading VIES animation"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public loadViesAnimationToRemoveTick(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$25;

    invoke-direct {v2, p0, p1}, Lin/juspay/hypersdk/core/JBridge$25;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while loading VIES animation"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAmazonPaySignOutClick(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JBridge;->onSignOutClick(Ljava/lang/String;)V

    return-void
.end method

.method public onSignOutClick(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$6;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/JBridge$6;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->signOut(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Listener;)V

    :cond_0
    return-void
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, v0, p5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public registerReceiver(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lin/juspay/hypersdk/core/JBridge$1;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/core/JBridge$1;-><init>(Lin/juspay/hypersdk/core/JBridge;)V

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/fromMediaSession;->onMessageChannelReady(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeKeyFromKeyStore(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p1}, Lin/juspay/hypersdk/security/SecurityHelper;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lin/juspay/hypersdk/core/DuiInterface;->reset()V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JBridge;->unRegisterReceiver()V

    return-void
.end method

.method public rsaEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v8, 0x1

    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-direct {v3, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3

    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, v8, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "{\"error\":false,\"payload\":\"%s\"}"

    new-array p3, v8, [Ljava/lang/Object;

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while trying to encrypt using RSA"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"error\":true,\"payload\":\"%s\"}"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scrollVisibleTop(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-nez v0, :cond_0

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "jbridge"

    const-string v5, "sendsms"

    const-string v6, "Browser fragment is null. Can\'t send SMS."

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, ""

    const-string v1, "SEND_SMS"

    invoke-virtual {p0, v1, v0, p4}, Lin/juspay/hypersdk/core/DuiInterface;->attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DELIVER_SMS"

    invoke-virtual {p0, v1, v0, p4}, Lin/juspay/hypersdk/core/DuiInterface;->attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "mobileNumber"

    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "simSlot"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "token"

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    new-instance p2, Lin/juspay/hypersdk/core/JBridge$20;

    invoke-direct {p2, p0}, Lin/juspay/hypersdk/core/JBridge$20;-><init>(Lin/juspay/hypersdk/core/JBridge;)V

    invoke-static {p1, p4, p2}, Lin/juspay/hypersdk/core/PaymentUtils;->sendSMS(Lin/juspay/hypersdk/HyperFragment;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSafetyNetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lin/juspay/hypersdk/security/SecurityHelper;->getRequestNonce(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4001
    sget-object v1, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    .line 5000
    new-instance v2, Lo/setPasswordVisibilityToggleTintList;

    invoke-direct {v2, v1}, Lo/setPasswordVisibilityToggleTintList;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lin/juspay/hypersdk/core/JBridge;->client:Lo/setPasswordVisibilityToggleTintList;

    .line 6000
    invoke-virtual {v2}, Lo/setPaymentDueDateWeaklyTyped;->asGoogleApiClient()Lo/getPaymentMode;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lo/setDefaultStereoMode;->extraCallback(Lo/getPaymentMode;[BLjava/lang/String;)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object p1

    new-instance p2, Lo/setEndIconTintMode$onMessageChannelReady;

    invoke-direct {p2}, Lo/setEndIconTintMode$onMessageChannelReady;-><init>()V

    .line 6007
    new-instance v1, Lo/getResult;

    invoke-direct {v1, p2}, Lo/getResult;-><init>(Lo/setSource;)V

    invoke-static {p1, v1}, Lo/getPaymentItem;->onMessageChannelReady(Lo/getPaymentDueDateWeaklyTyped;Lo/getPaymentItem$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$23;

    invoke-direct {v1, p0, p3}, Lin/juspay/hypersdk/core/JBridge$23;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Landroid/app/Activity;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance p3, Lin/juspay/hypersdk/core/JBridge$22;

    invoke-direct {p3, p0, p4}, Lin/juspay/hypersdk/core/JBridge$22;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->extraCallback(Landroid/app/Activity;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return v0

    .line 7001
    :cond_0
    sget-object p1, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    iget-object p2, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "UPDATE_GOOGLE_SERVICE"

    invoke-virtual {p0, p4, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->setActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setShadow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v13, p0

    iget-object v0, v13, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v14

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONArray;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p9

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, v13, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v15, Lin/juspay/hypersdk/core/JBridge$18;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object v12, v14

    invoke-direct/range {v1 .. v12}, Lin/juspay/hypersdk/core/JBridge$18;-><init>(Lin/juspay/hypersdk/core/JBridge;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {v0, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JBridge"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "Error while setting background for shadow"

    move-object/from16 p1, v14

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v0

    invoke-virtual/range {p1 .. p7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public showJuspayLoader(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$2;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/JBridge$2;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shutdownSafeBrowsing()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->client:Lo/setPasswordVisibilityToggleTintList;

    if-eqz v0, :cond_0

    .line 2000
    new-instance v1, Lo/VerifyException;

    invoke-direct {v1, v0}, Lo/VerifyException;-><init>(Lo/setPasswordVisibilityToggleTintList;)V

    invoke-virtual {v0, v1}, Lo/setPaymentDueDateWeaklyTyped;->doRead(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public startDatePicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lin/juspay/hypersdk/core/JBridge$13;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startLottieAnimation(ILjava/lang/String;ZFF)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v8

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v9, Lin/juspay/hypersdk/core/JBridge$21;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lin/juspay/hypersdk/core/JBridge$21;-><init>(Lin/juspay/hypersdk/core/JBridge;ILjava/lang/String;ZFFLin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startPhonepeRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    const/16 p2, 0x71

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startPhonepeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge;->phonepeTxnCallback:Ljava/lang/String;

    new-instance v0, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;

    invoke-direct {v0}, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;->setData(Ljava/lang/String;)Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;->setChecksum(Ljava/lang/String;)Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;->setUrl(Ljava/lang/String;)Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phonepe/android/sdk/api/builders/TransactionRequestBuilder;->build()Lcom/phonepe/android/sdk/base/model/TransactionRequest;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object p3, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    invoke-static {p3, p1}, Lcom/phonepe/android/sdk/api/PhonePe;->getTransactionIntent(Landroid/content/Context;Lcom/phonepe/android/sdk/base/model/TransactionRequest;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0x71

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/phonepe/android/sdk/api/PhonePeInitException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v2, "JBridge"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "phonepe_utils"

    const-string v6, "Phope Init Exception"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/phonepe/android/sdk/api/PhonePeInitException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startQRScanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lin/juspay/hypersdk/core/JBridge;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lin/juspay/hypersdk/core/JBridge;->openQRScanner(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$30;

    invoke-direct {v1, p0, p1, p2}, Lin/juspay/hypersdk/core/JBridge$30;-><init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "101"

    invoke-virtual {p0, v0, p1, v1}, Lin/juspay/hypersdk/core/DuiInterface;->requestPermission([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public startViesAnimationFor()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    new-instance v2, Lin/juspay/hypersdk/core/JBridge$28;

    invoke-direct {v2, p0}, Lin/juspay/hypersdk/core/JBridge$28;-><init>(Lin/juspay/hypersdk/core/JBridge;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v2, "JBridge"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while starting VIES animation"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public stopScanning()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/JBridge$31;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/JBridge$31;-><init>(Lin/juspay/hypersdk/core/JBridge;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/fromMediaSession;->onNavigationEvent(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/JBridge;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method
