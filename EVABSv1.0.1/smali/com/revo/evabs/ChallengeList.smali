.class public Lcom/revo/evabs/ChallengeList;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChallengeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public USER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "username"

    .line 15
    iput-object v0, p0, Lcom/revo/evabs/ChallengeList;->USER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/revo/evabs/ChallengeList;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 122
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/SmaliInject;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 117
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/Decode;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 112
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/ExportedInfo;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/DBLeak;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/SharedBreach;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/Res_raw;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/StringsSecrets;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/FileRead;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/Frida1;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/CustomAccess;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/BadComm;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/revo/evabs/DebugMe;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0035
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 19
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->setContentView(I)V

    const-string p1, "PREFERENCE"

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/revo/evabs/ChallengeList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "isFirstRun"

    const/4 v2, 0x1

    .line 22
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/revo/evabs/Welcome0;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/revo/evabs/ChallengeList;->finish()V

    :cond_0
    const-string p1, "PREFERENCE"

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/revo/evabs/ChallengeList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "isFirstRun"

    .line 31
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "DETAILS"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/revo/evabs/ChallengeList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f0a0107

    .line 35
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0124

    .line 36
    invoke-virtual {p0, v1}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/revo/evabs/ChallengeList;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/ssb.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v0, p0, Lcom/revo/evabs/ChallengeList;->USER:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/revo/evabs/ChallengeList;->USER:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hola, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p1, 0x7f0a0035

    .line 48
    invoke-virtual {p0, p1}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0039

    .line 49
    invoke-virtual {p0, v0}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a003a

    .line 50
    invoke-virtual {p0, v1}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a003b

    .line 51
    invoke-virtual {p0, v2}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a003c

    .line 52
    invoke-virtual {p0, v3}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0a003d

    .line 53
    invoke-virtual {p0, v4}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0a003e

    .line 54
    invoke-virtual {p0, v5}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f0a003f

    .line 55
    invoke-virtual {p0, v6}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f0a0040

    .line 56
    invoke-virtual {p0, v7}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0a0036

    .line 57
    invoke-virtual {p0, v8}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v9, 0x7f0a0037

    .line 58
    invoke-virtual {p0, v9}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    const v10, 0x7f0a0038

    .line 59
    invoke-virtual {p0, v10}, Lcom/revo/evabs/ChallengeList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 62
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method
