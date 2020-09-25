.class public Lin/juspay/hypersdk/core/ClipboardListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
.implements Lin/juspay/hypersdk/core/JuspayDuiHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClipboardListener"


# instance fields
.field private final context:Landroid/content/Context;

.field private final juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private final listener:Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/ClipboardListener;->listener:Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/ClipboardListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lin/juspay/hypersdk/core/ClipboardListener;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-void
.end method

.method public static getClipboardItems(Landroid/content/ClipboardManager;Lin/juspay/hypersdk/core/JuspayServices;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipboardManager;",
            "Lin/juspay/hypersdk/core/JuspayServices;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const-string v2, "system"

    const-string v3, "warning"

    const-string v4, "clip_board"

    const-string v5, "missing"

    const-string v6, "clipdata"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    move-object v7, p0

    const-string v2, "ClipboardListener"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "clip_board"

    const-string v6, "Error while trying to get clipboard items"

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private getClipboardManager()Landroid/content/ClipboardManager;
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/ClipboardListener;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_0
    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_0
    return-void
.end method

.method public execute(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPrimaryClipChanged()V
    .locals 2

    invoke-direct {p0}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/ClipboardListener;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardItems(Landroid/content/ClipboardManager;Lin/juspay/hypersdk/core/JuspayServices;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/ClipboardListener;->listener:Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;

    invoke-interface {v1, v0}, Lin/juspay/hypersdk/core/ClipboardListener$OnClipboardChangeListener;->onClipboardChange(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
