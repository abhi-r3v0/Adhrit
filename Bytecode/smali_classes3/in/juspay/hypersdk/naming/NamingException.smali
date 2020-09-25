.class public Lin/juspay/hypersdk/naming/NamingException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x12079f1c75c118c9L


# instance fields
.field protected remainingName:Lin/juspay/hypersdk/naming/Name;

.field protected resolvedName:Lin/juspay/hypersdk/naming/Name;

.field protected resolvedObj:Ljava/lang/Object;

.field protected rootException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->rootException:Ljava/lang/Throwable;

    iput-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->remainingName:Lin/juspay/hypersdk/naming/Name;

    iput-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->resolvedName:Lin/juspay/hypersdk/naming/Name;

    iput-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/naming/NamingException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/NamingException;->rootException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/naming/NamingException;->setRootCause(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setRootCause(Ljava/lang/Throwable;)V
    .locals 0

    if-eq p1, p0, :cond_0

    iput-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->rootException:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/naming/NamingException;->rootException:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [Root exception is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lin/juspay/hypersdk/naming/NamingException;->rootException:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/naming/NamingException;->remainingName:Lin/juspay/hypersdk/naming/Name;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; remaining name \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lin/juspay/hypersdk/naming/NamingException;->remainingName:Lin/juspay/hypersdk/naming/Name;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lin/juspay/hypersdk/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; resolved object "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lin/juspay/hypersdk/naming/NamingException;->resolvedObj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
