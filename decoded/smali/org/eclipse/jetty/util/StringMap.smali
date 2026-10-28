.class public Lorg/eclipse/jetty/util/StringMap;
.super Ljava/util/AbstractMap;
.source "StringMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/StringMap$1;,
        Lorg/eclipse/jetty/util/StringMap$NullEntry;,
        Lorg/eclipse/jetty/util/StringMap$Node;
    }
.end annotation


# static fields
.field public static final CASE_INSENSTIVE:Z = true

.field protected static final __HASH_WIDTH:I = 0x11


# instance fields
.field protected _entrySet:Ljava/util/HashSet;

.field protected _ignoreCase:Z

.field protected _nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

.field protected _nullValue:Ljava/lang/Object;

.field protected _root:Lorg/eclipse/jetty/util/StringMap$Node;

.field protected _umEntrySet:Ljava/util/Set;

.field protected _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 47
    const/16 v0, 0x11

    iput v0, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 48
    new-instance v0, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 50
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 51
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_umEntrySet:Ljava/util/Set;

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "ignoreCase"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 68
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 69
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "ignoreCase"    # Z
    .param p2, "width"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 80
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 81
    iput p2, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    new-instance v0, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 544
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 545
    iput-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 547
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    if-nez p1, :cond_2

    .line 534
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 534
    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {p0, v3, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_umEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 245
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 243
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 244
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 245
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 257
    :goto_0
    return-object v1

    .line 254
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;
    if-nez v0, :cond_1

    .line 256
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getBestEntry([BII)Ljava/util/Map$Entry;
    .locals 8
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 384
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 431
    :cond_0
    :goto_0
    return-object v4

    .line 386
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 387
    .local v4, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v3, -0x1

    .line 391
    .local v3, "ni":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_a

    .line 393
    add-int v6, p2, v2

    aget-byte v6, p1, v6

    int-to-char v0, v6

    .line 396
    .local v0, "c":C
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 398
    const/4 v3, 0x0

    .line 400
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v6, :cond_6

    move-object v1, v5

    .line 402
    .local v1, "child":Lorg/eclipse/jetty/util/StringMap$Node;
    :goto_2
    if-nez v1, :cond_2

    if-gtz v2, :cond_0

    .line 404
    :cond_2
    move-object v4, v1

    .line 408
    .end local v1    # "child":Lorg/eclipse/jetty/util/StringMap$Node;
    :cond_3
    :goto_3
    if-eqz v4, :cond_9

    .line 411
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v6, v6, v3

    if-eq v6, v0, :cond_4

    iget-boolean v6, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v6, v6, v3

    if-ne v6, v0, :cond_7

    .line 413
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 414
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v6, v6

    if-ne v3, v6, :cond_5

    .line 415
    const/4 v3, -0x1

    .line 391
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    :cond_6
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v7, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v7, v0, v7

    aget-object v1, v6, v7

    goto :goto_2

    .line 420
    :cond_7
    if-lez v3, :cond_8

    move-object v4, v5

    goto :goto_0

    .line 423
    :cond_8
    iget-object v4, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_3

    :cond_9
    move-object v4, v5

    .line 425
    goto :goto_0

    .line 428
    .end local v0    # "c":C
    :cond_a
    if-lez v3, :cond_b

    move-object v4, v5

    goto :goto_0

    .line 429
    :cond_b
    if-eqz v4, :cond_0

    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v4, v5

    .line 430
    goto :goto_0
.end method

.method public getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 270
    if-nez p1, :cond_1

    .line 271
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 313
    :cond_0
    :goto_0
    return-object v4

    .line 273
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 274
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 278
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_7

    .line 280
    add-int v5, p2, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 283
    .local v0, "c":C
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 285
    const/4 v2, 0x0

    .line 286
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v5, :cond_5

    move-object v3, v4

    .line 290
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 293
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v5, v5, v2

    if-eq v5, v0, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v5, v5, v2

    if-ne v5, v0, :cond_6

    .line 295
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 296
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v5, v5

    if-ne v2, v5, :cond_4

    .line 297
    const/4 v2, -0x1

    .line 278
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_5
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v6, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v6, v0, v6

    aget-object v3, v5, v6

    goto :goto_2

    .line 302
    :cond_6
    if-gtz v2, :cond_0

    .line 305
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 310
    .end local v0    # "c":C
    :cond_7
    if-gtz v2, :cond_0

    .line 311
    if-eqz v3, :cond_8

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v5, :cond_0

    :cond_8
    move-object v4, v3

    .line 313
    goto :goto_0
.end method

.method public getEntry([CII)Ljava/util/Map$Entry;
    .locals 7
    .param p1, "key"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 327
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 369
    :cond_0
    :goto_0
    return-object v4

    .line 329
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 330
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 334
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_7

    .line 336
    add-int v5, p2, v1

    aget-char v0, p1, v5

    .line 339
    .local v0, "c":C
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 341
    const/4 v2, 0x0

    .line 342
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v5, :cond_5

    move-object v3, v4

    .line 346
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 349
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v5, v5, v2

    if-eq v5, v0, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v5, v5, v2

    if-ne v5, v0, :cond_6

    .line 351
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 352
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v5, v5

    if-ne v2, v5, :cond_4

    .line 353
    const/4 v2, -0x1

    .line 334
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_5
    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v6, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v6, v0, v6

    aget-object v3, v5, v6

    goto :goto_2

    .line 358
    :cond_6
    if-gtz v2, :cond_0

    .line 361
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 366
    .end local v0    # "c":C
    :cond_7
    if-gtz v2, :cond_0

    .line 367
    if-eqz v3, :cond_8

    iget-object v5, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v5, :cond_0

    :cond_8
    move-object v4, v3

    .line 369
    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIgnoreCase()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 131
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 132
    .local v7, "oldValue":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 133
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-nez v10, :cond_0

    .line 135
    new-instance v10, Lorg/eclipse/jetty/util/StringMap$NullEntry;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lorg/eclipse/jetty/util/StringMap$NullEntry;-><init>(Lorg/eclipse/jetty/util/StringMap;Lorg/eclipse/jetty/util/StringMap$1;)V

    iput-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 136
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v11, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v7    # "oldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v7

    .line 141
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 142
    .local v4, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v3, -0x1

    .line 143
    .local v3, "ni":I
    const/4 v9, 0x0

    .line 144
    .local v9, "prev":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v8, 0x0

    .line 148
    .local v8, "parent":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_9

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    .local v0, "c":C
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    .line 155
    move-object v8, v4

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v3, 0x0

    .line 158
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v10, :cond_5

    const/4 v4, 0x0

    .line 162
    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    .line 165
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v10, v10, v3

    if-eq v10, v0, :cond_3

    iget-boolean v10, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v10, :cond_6

    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v10, v10, v3

    if-ne v10, v0, :cond_6

    .line 167
    :cond_3
    const/4 v9, 0x0

    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v10, v10

    if-ne v3, v10, :cond_4

    .line 170
    const/4 v3, -0x1

    .line 148
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_5
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v11, v0, v11

    aget-object v4, v10, v11

    goto :goto_2

    .line 176
    :cond_6
    if-nez v3, :cond_7

    .line 179
    move-object v9, v4

    .line 180
    iget-object v4, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {v4, p0, v3}, Lorg/eclipse/jetty/util/StringMap$Node;->split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;

    .line 186
    add-int/lit8 v1, v1, -0x1

    .line 187
    const/4 v3, -0x1

    .line 188
    goto :goto_3

    .line 193
    :cond_8
    new-instance v4, Lorg/eclipse/jetty/util/StringMap$Node;

    .end local v4    # "node":Lorg/eclipse/jetty/util/StringMap$Node;
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    invoke-direct {v4, v10, p1, v1}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>(ZLjava/lang/String;I)V

    .line 195
    .restart local v4    # "node":Lorg/eclipse/jetty/util/StringMap$Node;
    if-eqz v9, :cond_b

    .line 196
    iput-object v4, v9, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 222
    .end local v0    # "c":C
    :cond_9
    :goto_4
    if-eqz v4, :cond_10

    .line 225
    if-lez v3, :cond_a

    .line 226
    invoke-virtual {v4, p0, v3}, Lorg/eclipse/jetty/util/StringMap$Node;->split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;

    .line 228
    :cond_a
    iget-object v6, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 229
    .local v6, "old":Ljava/lang/Object;
    iput-object p1, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 230
    iput-object p2, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 231
    iget-object v10, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v7, v6

    .line 232
    goto :goto_0

    .line 197
    .end local v6    # "old":Ljava/lang/Object;
    .restart local v0    # "c":C
    :cond_b
    if-eqz v8, :cond_f

    .line 199
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v10, :cond_c

    .line 200
    iget v10, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    new-array v10, v10, [Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 201
    :cond_c
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v11, v0, v11

    aput-object v4, v10, v11

    .line 202
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v5, v10, v11

    .line 203
    .local v5, "oi":I
    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v10, :cond_9

    iget-object v10, v4, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    iget v11, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v10, v11

    if-eq v10, v5, :cond_9

    .line 205
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v10, v10, v5

    if-nez v10, :cond_d

    .line 206
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aput-object v4, v10, v5

    goto :goto_4

    .line 209
    :cond_d
    iget-object v10, v8, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v2, v10, v5

    .line 210
    .local v2, "n":Lorg/eclipse/jetty/util/StringMap$Node;
    :goto_5
    iget-object v10, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v10, :cond_e

    .line 211
    iget-object v2, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_5

    .line 212
    :cond_e
    iput-object v4, v2, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_4

    .line 217
    .end local v2    # "n":Lorg/eclipse/jetty/util/StringMap$Node;
    .end local v5    # "oi":I
    :cond_f
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_4

    .line 234
    .end local v0    # "c":C
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 691
    .local v0, "ic":Z
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 692
    .local v1, "map":Ljava/util/HashMap;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->setIgnoreCase(Z)V

    .line 693
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/StringMap;->putAll(Ljava/util/Map;)V

    .line 694
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 447
    if-nez p1, :cond_2

    .line 449
    iget-object v5, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    .line 450
    .local v5, "oldValue":Ljava/lang/Object;
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    if-eqz v7, :cond_0

    .line 452
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    iget-object v8, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 453
    iput-object v6, p0, Lorg/eclipse/jetty/util/StringMap;->_nullEntry:Lorg/eclipse/jetty/util/StringMap$NullEntry;

    .line 454
    iput-object v6, p0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    :cond_0
    move-object v6, v5

    .line 505
    .end local v5    # "oldValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v6

    .line 459
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    .line 460
    .local v3, "node":Lorg/eclipse/jetty/util/StringMap$Node;
    const/4 v2, -0x1

    .line 464
    .local v2, "ni":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 469
    .local v0, "c":C
    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    .line 471
    const/4 v2, 0x0

    .line 472
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-nez v7, :cond_6

    move-object v3, v6

    .line 476
    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    .line 479
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v7, v7, v2

    if-eq v7, v0, :cond_4

    iget-boolean v7, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    if-eqz v7, :cond_7

    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_7

    .line 481
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 482
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v7, v7

    if-ne v2, v7, :cond_5

    .line 483
    const/4 v2, -0x1

    .line 464
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_6
    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget v8, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int v8, v0, v8

    aget-object v3, v7, v8

    goto :goto_2

    .line 488
    :cond_7
    if-gtz v2, :cond_1

    .line 491
    iget-object v3, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    goto :goto_2

    .line 496
    .end local v0    # "c":C
    :cond_8
    if-gtz v2, :cond_1

    .line 497
    if-eqz v3, :cond_9

    iget-object v7, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 500
    :cond_9
    iget-object v4, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 501
    .local v4, "old":Ljava/lang/Object;
    iget-object v7, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 502
    iput-object v6, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 503
    iput-object v6, v3, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    move-object v6, v4

    .line 505
    goto :goto_0
.end method

.method public setIgnoreCase(Z)V
    .locals 2
    .param p1, "ic"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_root:Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be set before first put"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    .line 93
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 108
    iput p1, p0, Lorg/eclipse/jetty/util/StringMap;->_width:I

    .line 109
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 682
    .local v0, "map":Ljava/util/HashMap;
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/StringMap;->_ignoreCase:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 683
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 684
    return-void
.end method
