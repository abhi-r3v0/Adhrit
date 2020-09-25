.class public interface abstract Lin/juspay/hypersdk/naming/Name;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3233e160e95ced33L


# virtual methods
.method public abstract add(ILjava/lang/String;)Lin/juspay/hypersdk/naming/Name;
.end method

.method public abstract add(Ljava/lang/String;)Lin/juspay/hypersdk/naming/Name;
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract endsWith(Lin/juspay/hypersdk/naming/Name;)Z
.end method

.method public abstract get(I)Ljava/lang/String;
.end method

.method public abstract getAll()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrefix(I)Lin/juspay/hypersdk/naming/Name;
.end method

.method public abstract getSuffix(I)Lin/juspay/hypersdk/naming/Name;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(I)Ljava/lang/Object;
.end method

.method public abstract size()I
.end method

.method public abstract startsWith(Lin/juspay/hypersdk/naming/Name;)Z
.end method
