.class public abstract Lorg/npci/upi/security/pinactivitycomponent/ae;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lorg/npci/upi/security/pinactivitycomponent/widget/m;


# instance fields
.field protected a:Lorg/json/JSONObject;

.field protected b:Lorg/json/JSONObject;

.field protected c:Lorg/json/JSONArray;

.field protected d:Ljava/util/Timer;

.field protected e:J

.field protected f:Ljava/util/ArrayList;

.field protected g:I

.field protected h:Landroid/widget/PopupWindow;

.field protected i:Ljava/util/Timer;

.field protected j:Ljava/util/Timer;

.field protected k:Landroid/os/Handler;

.field protected l:Ljava/lang/Runnable;

.field protected m:Lorg/json/JSONObject;

.field protected n:Lorg/json/JSONArray;

.field protected o:J

.field protected p:Landroid/content/Context;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->d:Ljava/util/Timer;

    const-wide/32 v1, 0xafc8

    iput-wide v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->e:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->i:Ljava/util/Timer;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->m:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->n:Lorg/json/JSONArray;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->q:Z

    return-void
.end method

.method private d()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    :try_start_0
    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "subtype"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATMPIN"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    const-string v7, "OTP|SMS|HOTP|TOTP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :cond_1
    const-string v7, "MPIN"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    :cond_2
    const-string v7, "NMPIN"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "NPCIFragment"

    invoke-static {v7, v6}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v1, v5, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    :cond_8
    return-void
.end method


# virtual methods
.method a(F)I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected a(Ljava/lang/String;II)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setActionBarPositionTop(Z)V

    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {p0, v2}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v2}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setCharSize(F)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setSpace(F)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setFontSize(F)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    invoke-virtual {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v6, v5, v6

    invoke-virtual {p0, v4}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v4

    aput v4, v5, v3

    const/4 v4, 0x2

    aput v6, v5, v4

    const/4 v4, 0x3

    aput v6, v5, v4

    invoke-virtual {v2, v5}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setMargin([I)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setLineStrokeCentered(Z)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v3}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setLineStrokeSelected(F)V

    invoke-virtual {v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getFormInputView()Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v3

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$color;->form_item_input_colors_transparent:I

    invoke-static {v3, v4}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->setColorStates(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setInputLength(I)V

    invoke-virtual {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setFormItemListener(Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V

    invoke-virtual {v1, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setFormItemTag(I)V

    return-object v1
.end method

.method public abstract a()V
.end method

.method protected a(Ljava/util/Timer;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NPCIFragment"

    invoke-static {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected a(Lorg/npci/upi/security/pinactivitycomponent/am;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->q:Z

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V
    .locals 11

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->i:Ljava/util/Timer;

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/al;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/al;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    iget-wide v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->e:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/graphics/drawable/Drawable;Z)V

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$string;->detecting_otp:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZZ)V

    invoke-virtual {p1, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Z)V

    return-void
.end method

.method protected b()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->a:Lorg/json/JSONObject;

    :cond_0
    const-string v1, "controls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->m:Lorg/json/JSONObject;

    const-string v1, "CredAllowed"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->d()V

    :cond_1
    const-string v1, "salt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->b:Lorg/json/JSONObject;

    :cond_2
    const-string v1, "payInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->n:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NPCIFragment"

    const-string v2, "Error while reading Arguments"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    instance-of v0, v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setNumDigitsOfOTP(I)V

    :cond_0
    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/an;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/an;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->d:Ljava/util/Timer;

    new-instance v3, Lorg/npci/upi/security/pinactivitycomponent/af;

    invoke-direct {v3, p0, v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/af;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ae;Lorg/npci/upi/security/pinactivitycomponent/an;I)V

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x7d0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected b(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->layout_popup_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->popup_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0, v2}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(F)I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$style;->PopupAnimation:I

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    sget p1, Lorg/npci/upi/security/pinactivitycomponent/R$id;->popup_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lorg/npci/upi/security/pinactivitycomponent/ah;

    invoke-direct {p2, p0}, Lorg/npci/upi/security/pinactivitycomponent/ah;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->j:Ljava/util/Timer;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->k:Landroid/os/Handler;

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/ai;

    invoke-direct {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/ai;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->l:Ljava/lang/Runnable;

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->k:Landroid/os/Handler;

    iget-wide v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->o:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Lorg/npci/upi/security/pinactivitycomponent/am;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Lorg/npci/upi/security/pinactivitycomponent/am;)V

    return-void
.end method

.method protected c()V
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->a:Lorg/json/JSONObject;

    const-string v1, "false"

    const-string v2, "resendOTPFeature"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    new-instance v1, Lorg/npci/upi/security/pinactivitycomponent/aj;

    invoke-direct {v1, p0}, Lorg/npci/upi/security/pinactivitycomponent/aj;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->d:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Ljava/util/Timer;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->i:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Ljava/util/Timer;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->j:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Ljava/util/Timer;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->l:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    instance-of p1, p1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {p1, p0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->setCurrentFragment(Lorg/npci/upi/security/pinactivitycomponent/ae;)V

    :cond_0
    return-void
.end method
