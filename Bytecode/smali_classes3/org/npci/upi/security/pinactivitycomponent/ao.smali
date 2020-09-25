.class public Lorg/npci/upi/security/pinactivitycomponent/ao;
.super Lorg/npci/upi/security/pinactivitycomponent/ae;

# interfaces
.implements Lorg/npci/upi/security/pinactivitycomponent/widget/m;


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field q:Landroid/widget/LinearLayout;

.field r:Landroid/widget/LinearLayout;

.field private t:I

.field private u:Ljava/util/Timer;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/util/HashMap;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/pinactivitycomponent/ao;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ae;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->u:Ljava/util/Timer;

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->v:Ljava/lang/Boolean;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->w:Ljava/util/HashMap;

    iput-boolean v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->x:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 14

    const-string v0, "dLength"

    const-string v1, "MPIN"

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_inner_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    :try_start_0
    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "subtype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "TOTP"

    const-string v8, "HOTP"

    const-string v9, "EMAIL"

    const-string v10, "SMS"

    const-string v11, "OTP"

    const-string v12, "ATMPIN"

    const-string v13, "NMPIN"

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_1
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_6

    :cond_2
    const-string v6, ""

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$string;->npci_mpin_title:I

    :goto_2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_3
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$string;->npci_atm_title:I

    goto :goto_2

    :cond_5
    :goto_3
    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$string;->npci_otp_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v4

    instance-of v4, v4, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v4

    check-cast v4, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->checkSMSReadPermission()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v5}, Lorg/npci/upi/security/pinactivitycomponent/ae;->b(I)V

    :cond_6
    :goto_4
    invoke-virtual {p0, v6, v2, v5}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Ljava/lang/String;II)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setFormDataTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_7
    :goto_6
    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$string;->npci_set_mpin_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v5}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Ljava/lang/String;II)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    move-result-object v4

    sget v6, Lorg/npci/upi/security/pinactivitycomponent/R$string;->npci_confirm_mpin_title:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v5}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Ljava/lang/String;II)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6, p0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->a(Ljava/util/ArrayList;Lorg/npci/upi/security/pinactivitycomponent/widget/m;)V

    invoke-virtual {v4, v3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;->setFormDataTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    sget-object v4, Lorg/npci/upi/security/pinactivitycomponent/ao;->s:Ljava/lang/String;

    const-string v5, "Error while inflating Layout"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private d()V
    .locals 7

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputLength()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    sget v1, Lorg/npci/upi/security/pinactivitycomponent/R$string;->invalid_otp:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/ao;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->getInputLength()I

    move-result v4

    if-eq v3, v4, :cond_2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$string;->componentMessage:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->x:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->x:Z

    :goto_1
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-interface {v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->getFormDataTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subtype"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->b:Lorg/json/JSONObject;

    const-string v5, "credential"

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-interface {v6}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->getInputValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    check-cast v4, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v4

    invoke-virtual {v4}, Lorg/npci/upi/security/pinactivitycomponent/c;->a()Lorg/npci/upi/security/pinactivitycomponent/aq;

    move-result-object v4

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/npci/upi/security/pinactivitycomponent/aq;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    check-cast v5, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v5}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v5

    invoke-virtual {v5}, Lorg/npci/upi/security/pinactivitycomponent/c;->b()Lorg/npci/upi/security/pinactivitycomponent/j;

    move-result-object v5

    iget-object v6, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->b:Lorg/json/JSONObject;

    invoke-virtual {v5, v4, v3, v2, v6}, Lorg/npci/upi/security/pinactivitycomponent/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lin/org/npci/commonlibrary/Message;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->w:Ljava/util/HashMap;

    invoke-static {v3}, Lorg/npci/upi/security/pinactivitycomponent/w;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lorg/npci/upi/security/pinactivitycomponent/ao;->s:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->w:Ljava/util/HashMap;

    const-string v3, "credBlocks"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/c;->d()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/c;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method

.method private e()Z
    .locals 4

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "subtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lorg/npci/upi/security/pinactivitycomponent/ao;->s:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "OTP"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EMAIL"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HOTP"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TOTP"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MPIN"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method private f()V
    .locals 13

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->setNonMaskedField()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v3

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_visibility_on:I

    invoke-static {v3, v4}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v3

    sget v4, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_visibility_off:I

    invoke-static {v3, v4}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget v3, Lorg/npci/upi/security/pinactivitycomponent/R$string;->action_hide:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v3, Lorg/npci/upi/security/pinactivitycomponent/R$string;->action_show:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/npci/upi/security/pinactivitycomponent/ap;

    move-object v3, v12

    move-object v4, p0

    move-object v5, v2

    move-object v7, v11

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/npci/upi/security/pinactivitycomponent/ap;-><init>(Lorg/npci/upi/security/pinactivitycomponent/ao;Lorg/npci/upi/security/pinactivitycomponent/widget/a;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, v2

    move-object v4, v11

    move-object v5, v10

    move-object v6, v12

    invoke-interface/range {v3 .. v9}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-interface {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->d()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemPager;

    if-nez v0, :cond_0

    iput p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->t:I

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->u:Ljava/util/Timer;

    invoke-virtual {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Ljava/util/Timer;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Z)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1, v0, p2, p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;ZZ)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    sget v0, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_tick_ok:I

    invoke-static {p2, v0}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/ao;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lorg/npci/upi/security/pinactivitycomponent/R$layout;->fragment_pin:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/ae;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_inner_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->r:Landroid/widget/LinearLayout;

    sget p2, Lorg/npci/upi/security/pinactivitycomponent/R$id;->main_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ao;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->b()V

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/ao;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/npci/upi/security/pinactivitycomponent/ao;->f()V

    return-void
.end method
