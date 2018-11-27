.class interface abstract Landroid/support/v4/os/LocaleListInterface;
.super Ljava/lang/Object;
.source "LocaleListInterface.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(I)Ljava/util/Locale;
.end method

.method public abstract getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLocaleList()Ljava/lang/Object;
.end method

.method public abstract hashCode()I
.end method

.method public abstract indexOf(Ljava/util/Locale;)I
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public varargs abstract setLocaleList([Ljava/util/Locale;)V
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract size()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract toLanguageTags()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
