.class public Lcom/revo/evabs/CustomAccess;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CustomAccess.java"


# instance fields
.field public final EVABS_SENSOR_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "com.revo.evabs.action.SENSOR_KEY"

    .line 14
    iput-object v0, p0, Lcom/revo/evabs/CustomAccess;->EVABS_SENSOR_KEY:Ljava/lang/String;

    return-void
.end method

.method private GetSensorKey()V
    .locals 4

    const v0, 0x7f0a005c

    .line 39
    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 40
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    .line 41
    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 42
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SYS_CTRL: CREDS ACCEPTED. SENSOR_KEY SENT"

    .line 45
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.revo.evabs.action.SENSOR_KEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVABS{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/revo/evabs/CustomAccess;->stringFromJNI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "SYS_CTRL: WRONG_CREDS. SENSOR_KEY LOCKED"

    .line 53
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x63s
        0x75s
        0x73s
        0x74s
        0x30s
        0x6ds
        0x5fs
        0x70s
        0x33s
        0x72s
        0x6ds
    .end array-data
.end method

.method static synthetic access$000(Lcom/revo/evabs/CustomAccess;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/revo/evabs/CustomAccess;->GetSensorKey()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 18
    invoke-virtual {p0, p1}, Lcom/revo/evabs/CustomAccess;->setContentView(I)V

    const p1, 0x7f0a0029

    .line 20
    invoke-virtual {p0, p1}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 21
    new-instance v0, Lcom/revo/evabs/CustomAccess$1;

    invoke-direct {v0, p0}, Lcom/revo/evabs/CustomAccess$1;-><init>(Lcom/revo/evabs/CustomAccess;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0116

    .line 28
    invoke-virtual {p0, p1}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a002f

    .line 29
    invoke-virtual {p0, v0}, Lcom/revo/evabs/CustomAccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    new-instance v1, Lcom/revo/evabs/CustomAccess$2;

    invoke-direct {v1, p0, p1}, Lcom/revo/evabs/CustomAccess$2;-><init>(Lcom/revo/evabs/CustomAccess;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
