.class Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;
.super Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;
.source "ICUCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p1}, Landroid/support/v4/text/ICUCompatApi21;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
