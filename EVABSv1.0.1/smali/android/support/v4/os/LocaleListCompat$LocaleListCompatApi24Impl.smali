.class Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroid/support/v4/os/LocaleListInterface;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatApi24Impl"
.end annotation


# instance fields
.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    check-cast p1, Landroid/support/v4/os/LocaleListCompat;

    invoke-virtual {p1}, Landroid/support/v4/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 1
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method

.method public size()I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
